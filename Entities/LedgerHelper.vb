Imports System.Data.SqlClient
Imports System.Text

Public Class LedgerHelper
    Dim Query As String

    Dim dataHelp As DataHelper = New DataHelper()

    Public Sub AddLedger(ByVal str As String)

        Dim detailSaveQuery = "INSERT INTO CG_Ledger([Lgr_Fin_Yr] ,[Lgr_Inst_Cd],[Lgr_Inst_Typ],[Lgr_Brn_Cd ],[Lgr_Lnk_No],[Lgr_Lnk_Dt],[Lgr_Dbk_Cd],[Lgr_Trn_Typ],[Lgr_Vch_No],[Lgr_Vch_Dt],[Lgr_Vch_Ref_No],[Lgr_Narr],[Lgr_Chq_No],[Lgr_Chq_Dt],[Lgr_Ref_No],[Lgr_Ref_Dt],[Lgr_Acc_Cd],[Lgr_Amt],[Lgr_Cr_Dr],[Lgr_ABS_Amt])" + _
            "select  VH_Fin_Yr,VH_Inst_Cd,VH_Inst_Typ,VH_Brn_Cd,VH_Lnk_No,VH_Lnk_Dt,VH_Dbk_Cd,VH_Trn_Typ,VH_Vch_No,VH_Vch_Dt,VH_Vch_Ref_No,VH_Pty_Nm,VH_Chq_No,VH_Chq_Dt,VH_Ref_No,VH_Ref_Dt,VH_Acc_Cd,VH_Amt,VH_Cr_Dr,VH_ABS_Amt from dbo.CG_Voucher_Header where VH_Lnk_No='" + str + "'"
        dataHelp.ExecuteNonQuery(detailSaveQuery, CommandType.Text)

    End Sub
    Public Sub AddLedgerDetail(ByVal str As String)
        Dim saveQuery = "INSERT INTO CG_Ledger([Lgr_Fin_Yr] ,[Lgr_Inst_Cd],[Lgr_Inst_Typ],[Lgr_Brn_Cd ],[Lgr_Lnk_No],[Lgr_Dbk_Cd],[Lgr_Trn_Typ],[Lgr_Vch_No],[Lgr_Vch_Ref_No],[Lgr_Narr],[Lgr_Ref_No],[Lgr_Acc_Cd],[Lgr_Amt],[Lgr_Cr_Dr],[Lgr_ABS_Amt])" + _
           "select  VD_Fin_Yr,VD_Inst_Cd,VD_Inst_Typ,VD_Brn_Cd,VD_Lnk_No,VD_Dbk_Cd,VD_Trn_Typ ,VD_Vch_No ,VD_Vch_Ref_No ,VD_Narr,VD_Ref_No,VD_Acc_Cd,VD_Amt,VD_Cr_Dr,VD_ABS_Amt  from dbo.CG_Voucher_Detail where VD_Lnk_No='" + str + "' and VD_Seq_No='001'"

        dataHelp.ExecuteNonQuery(saveQuery, CommandType.Text)
    End Sub

    Function GetCountFromLedger(ByVal link_no As String) As Integer
        Dim query As String
        Dim count As Integer
        Try
            query = String.Format("SELECT count(*) from dbo.CG_Ledger where Lgr_Lnk_No='" + link_no + "'")

            Int32.TryParse(dataHelp.ExecuteScalar(query, CommandType.Text, Nothing), count)
            Return count
        Catch ex As Exception
            Throw
        End Try
    End Function

    Function GetLedgerCount(ByVal link_no As String) As Integer
        Dim query As String
        Dim count As Integer
        Try
            query = String.Format("SELECT count(*) from dbo.CG_Voucher_Detail where VD_Lnk_No='" + link_no + "'")

            Int32.TryParse(dataHelp.ExecuteScalar(query, CommandType.Text, Nothing), count)
            Return count
        Catch ex As Exception
            Throw
        End Try

    End Function
End Class
