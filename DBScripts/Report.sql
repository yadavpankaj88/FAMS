ALTER FUNCTION dbo.OpeningBalanceValue
(
	@lgrCode varchar(10),
	@vchDate date,
	@instType varchar(5)
)
RETURNS money
AS
	BEGIN

		declare @firstDate as datetime
		set @firstDate=(SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(@vchDate)-1),@vchDate),101))

		declare @processingMonth as int
		set @processingMonth=DATEPART(mm,@vchDate)

		declare @totalBalance as money
		declare @balanceAdd as money

		declare @opnBalance as money
		declare @opnQuery as nvarchar(max)

		select @opnBalance=AM_Opn_Bal from CG_Accounts where AM_Acc_Cd=@lgrCode                

		declare @monthAmt as money
		declare @monthQuery as nvarchar(max)

		select @monthAmt=SUM(Lgr_Amt) from CG_Ledger where Lgr_Vch_Dt>= convert(varchar(50),@firstDate) and Lgr_Vch_Dt<= convert(varchar(50),@vchDate)
							and Lgr_Acc_Cd= @lgrCode            

		--if month is april,return opening balance+month calculation
		If @processingMonth=4
		Begin
		set @balanceAdd=@monthAmt  

		set @totalBalance=isnull(@opnBalance,0)+isnull(@balanceAdd,0)

		End
		Else
		Begin
		--any other month than april

		declare @startCount as int
		set @startCount=4

		--while loop to calculate balance addition of previous months
		While(@startCount<@processingMonth)
		Begin
			declare @strQuery as nvarchar(max)
			declare @queryOut as money
			declare @paddedString as varchar(2)
		set @paddedString=right('0'+ rtrim(convert(varchar(5),@startCount)), 2)

		SELECT @queryOut = case 
							when @paddedString = '01' then AM_Net_01
							when @paddedString = '02' then AM_Net_02
							when @paddedString = '03' then AM_Net_03
							when @paddedString = '04' then AM_Net_04
							when @paddedString = '05' then AM_Net_05
							when @paddedString = '06' then AM_Net_06
							when @paddedString = '07' then AM_Net_07
							when @paddedString = '08' then AM_Net_08
							when @paddedString = '09' then AM_Net_09
							when @paddedString = '10' then AM_Net_10
							when @paddedString = '11' then AM_Net_11
							when @paddedString = '12' then AM_Net_12
						end
						FROM CG_Accounts where AM_Acc_Cd=@lgrCode
 
			set @balanceAdd=isnull(@balanceAdd,0)+ @queryOut
			set @startCount=@startCount+1
		End

		--add current month amounts
		set @balanceAdd=isnull(@balanceAdd,0)+isnull(@monthAmt,0) 

                 
		--calculate total balance by adding all calculations to opening balance
		set @totalBalance=ISNULL(@opnBalance,0)+isnull(@balanceAdd,0)
		End

		SET @totalBalance= ISNULL(@totalBalance,0)

RETURN @totalBalance
END


print'----------------------------------------------------------------------------------------------'

ALTER PROCEDURE [dbo].[GetCashBankReportDetails]
	-- Add the parameters for the stored procedure here
	@instType varchar(2),
	@Fromdate as datetime = NULL,-- vh confirm date
	@ToDate as datetime = NULL,
	@VH_Dbk_Cd char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @strQuery as nvarchar(max)
	

	set @strQuery = 'SELECT 
					VH.VH_acc_cd, 
					dbo.OpeningBalanceValue(VH.VH_acc_cd,'''+CONVERT(VARCHAR(25),DATEADD(DAY,-1,@Fromdate),101)+''','''+@instType+''') as OpeningBalance,
					VH.VH_Vch_No, 
					VH.VH_Vch_Ref_No, 
					VD.VD_Lgr_Cd, 
					Acc.AM_Acc_Nm, 
					VD.VD_Narr, 
					VH.VH_Pty_Nm, 
					VD.VD_Ref_Dt,
					VD.VD_Fin_Yr,
					VD.VD_Cr_Dr,
					VH.VH_Trn_Typ,
					CASE 
					WHEN VH.VH_Trn_Typ in(''CR'',''BR'') THEN VD.VD_ABS_Amt
					END as Receipt,
					CASE 
					WHEN VH.VH_Trn_Typ in(''CP'',''BP'') THEN VD.VD_ABS_Amt
					END as Payment,
					CASE 
					WHEN VH.VH_Trn_Typ in(''CR'',''BR'') THEN VD.VD_Cr_Dr
					END as ReceiptCRDR,
					CASE 
					WHEN VH.VH_Trn_Typ in(''CP'',''BP'') THEN VD.VD_Cr_Dr 
					END as PaymentCRDR,
					CASE WHEN VH.VH_Chq_No > 0 THEN VH.VH_Chq_No
					ELSE ''Cash''
					END as TransactionType,
					VH.VH_ABS_Amt,
					CASE 
					WHEN VH.VH_Trn_Typ in(''CR'',''BR'') THEN VH.VH_Amt
					END as ReceiptSum,
					CASE 
					WHEN VH.VH_Trn_Typ in(''CP'',''BP'') THEN VH.VH_Amt
					END as PaymentSum,
					VH.VH_Amt,
					VD.VD_Amt,
					VD.VD_Acc_Cd
					,(SELECT SUM(Lgr_amt) FROM [dbo].['+@instType+'_Ledger]
						WHERE Lgr_acc_cd= VH.VH_Acc_Cd
						AND Lgr_vch_dt < getdate()) as RunningBalance
					FROM '+@instType+'_Voucher_Detail AS VD 
	INNER JOIN		'+@instType+'_Voucher_Header AS VH 
	ON				VD.VD_Vch_Ref_No = VH.VH_Vch_Ref_No 
	LEFT OUTER JOIN	'+@instType+'_Accounts AS Acc 
	ON				VD.VD_Acc_Cd = Acc.AM_Acc_Cd
	WHERE			VH.VH_Dbk_Cd = '''+@VH_Dbk_Cd+''' AND VH.VH_Vch_No IS NOT NULL and VH.VH_Vch_Dt >= '''+CONVERT(VARCHAR(10),@Fromdate,110)+''' and VH.VH_Vch_Dt <= '''+CONVERT(VARCHAR(10),@ToDate,110)+'''
	ORDER BY		VD.VD_Lnk_No ASC'

	exec(@strQuery)

END

print'----------------------------------------------------------------------------------------------'

ALTER PROCEDURE [dbo].[GetGeneralLedgerReportDetails]
	-- Add the parameters for the stored procedure here
	@instType varchar(2),
	@Fromdate as datetime,-- vh confirm date
	@ToDate as datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @strQuery as nvarchar(max)
	set @strQuery = 'SELECT		Acc.AM_ACC_Nm,
								dbo.OpeningBalanceValue(Lgr.Lgr_Acc_cd,'''+CONVERT(VARCHAR(25),DATEADD(DAY,-1,@Fromdate),101)+''','''+@instType+''') as OpeningBalance,
								Lgr.Lgr_VCH_Dt,
								Lgr.Lgr_Vch_No,
								Lgr.Lgr_Vch_Ref_No,
								Lgr.Lgr_Ref_No,
								Lgr.Lgr_Ref_Dt,
								Lgr.Lgr_Amt,
								Lgr.Lgr_Narr,
								Lgr.Lgr_Fin_Yr,
								Lgr.Lgr_Acc_Cd,
								Lgr.Lgr_Cr_Dr,
								Lgr.Lgr_Trn_Typ,
								CASE 
								WHEN LOWER(Lgr.Lgr_Cr_Dr)=''cr'' THEN Lgr.Lgr_ABS_Amt
								END as Credit,
								CASE 
								WHEN LOWER(Lgr.Lgr_Cr_Dr)=''dr'' THEN Lgr.Lgr_ABS_Amt
								END as Debit,
								CASE 
								WHEN LOWER(Lgr.Lgr_Cr_Dr)=''cr'' THEN Lgr.Lgr_Cr_Dr
								END as CreditCRDR,
								CASE 
								WHEN LOWER(Lgr.Lgr_Cr_Dr)=''dr'' THEN Lgr.Lgr_Cr_Dr
								END as DebitCRDR
								,(Select Top 1 sum(Lgr_Amt) from '+ @instType +'_Ledger Lgr
								where Lgr_acc_cd= Acc.AM_Acc_Cd AND Lgr_vch_dt < getdate()) as RunningBalance								
								,dbo.OpeningBalanceValue(Lgr.Lgr_Acc_Cd,'''+CONVERT(VARCHAR(25),DATEADD(DAY,0,@ToDate),101)+''','''+@instType+''') as ClosingBalance
					FROM '+@instType+'_Accounts Acc
					LEFT OUTER JOIN '+@instType+'_Ledger Lgr
					ON Acc.AM_ACC_Cd=Lgr.Lgr_Acc_Cd
					WHERE Acc.AM_Calls Is NULL 
					and Lgr.Lgr_Vch_Dt >= '''+CONVERT(VARCHAR(10),@Fromdate,110)+''' and Lgr.Lgr_Vch_Dt <= '''+CONVERT(VARCHAR(10),@ToDate,110)+''''
	 
	exec(@strQuery)

END





