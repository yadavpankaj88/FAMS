
/****** Object:  Table [dbo].[JR_Accounts]    Script Date: 01/16/2016 14:31:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Accounts]') AND type in (N'U'))
DROP TABLE [dbo].[JR_Accounts]
GO
/****** Object:  Table [dbo].[JR_Daybooks]    Script Date: 01/16/2016 14:31:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Daybooks]') AND type in (N'U'))
DROP TABLE [dbo].[JR_Daybooks]
GO
/****** Object:  Table [dbo].[JR_Ledger]    Script Date: 01/16/2016 14:31:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Ledger]') AND type in (N'U'))
DROP TABLE [dbo].[JR_Ledger]
GO
/****** Object:  Table [dbo].[JR_Voucher_Detail]    Script Date: 01/16/2016 14:31:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Voucher_Detail]') AND type in (N'U'))
DROP TABLE [dbo].[JR_Voucher_Detail]
GO
/****** Object:  Table [dbo].[JR_Voucher_Header]    Script Date: 01/16/2016 14:31:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Voucher_Header]') AND type in (N'U'))
DROP TABLE [dbo].[JR_Voucher_Header]
GO

/****** Object:  Table [dbo].[JR_Voucher_Header]    Script Date: 01/16/2016 14:31:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Voucher_Header]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JR_Voucher_Header](
	[VH_Fin_Yr] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VH_Inst_Cd] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VH_Inst_Typ] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VH_Brn_Cd] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VH_Lnk_No] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VH_Lnk_Dt] [datetime] NULL,
	[VH_Pty_Nm] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Dbk_Cd] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Trn_Typ] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Vch_No] [char](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Vch_Dt] [datetime] NULL,
	[VH_Chq_No] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Chq_Dt] [datetime] NULL,
	[VH_Clr_Dt] [datetime] NULL,
	[VH_Ref_No] [char](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Ref_Dt] [datetime] NULL,
	[VH_Vch_Ref_No] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Lgr_Cd] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Acc_Cd] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Amt] [money] NULL,
	[VH_Cr_Dr] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_ABS_Amt] [money] NULL,
	[VH_Ent_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Ent_Dt] [datetime] NULL,
	[VH_Upd_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Upd_Dt] [datetime] NULL,
	[VH_Conf_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VH_Conf_Dt] [datetime] NULL,
 CONSTRAINT [pk_voucherheader_JR] PRIMARY KEY CLUSTERED 
(
	[VH_Fin_Yr] ASC,
	[VH_Inst_Cd] ASC,
	[VH_Inst_Typ] ASC,
	[VH_Brn_Cd] ASC,
	[VH_Lnk_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/*INSERT [dbo].[JR_Voucher_Header] ([VH_Fin_Yr], [VH_Inst_Cd], [VH_Inst_Typ], [VH_Brn_Cd], [VH_Lnk_No], [VH_Lnk_Dt], [VH_Pty_Nm], [VH_Dbk_Cd], [VH_Trn_Typ], [VH_Vch_No], [VH_Vch_Dt], [VH_Chq_No], [VH_Chq_Dt], [VH_Clr_Dt], [VH_Ref_No], [VH_Ref_Dt], [VH_Vch_Ref_No], [VH_Lgr_Cd], [VH_Acc_Cd], [VH_Amt], [VH_Cr_Dr], [VH_ABS_Amt], [VH_Ent_By], [VH_Ent_Dt], [VH_Upd_By], [VH_Upd_Dt], [VH_Conf_By], [VH_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', CAST(0x0000A58D00000000 AS DateTime), N'SNEHAL                                                                                              ', N'CASH', N'CR', N'01140001', CAST(0x0000A58D00000000 AS DateTime), N'      ', CAST(0x0000000000000000 AS DateTime), NULL, N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), N'000019', N'00', N'A00004', 2000.0000, N'Dr', 2000.0000, N'1    ', CAST(0x0000A58D014D1839 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014D8F12 AS DateTime))
INSERT [dbo].[JR_Voucher_Header] ([VH_Fin_Yr], [VH_Inst_Cd], [VH_Inst_Typ], [VH_Brn_Cd], [VH_Lnk_No], [VH_Lnk_Dt], [VH_Pty_Nm], [VH_Dbk_Cd], [VH_Trn_Typ], [VH_Vch_No], [VH_Vch_Dt], [VH_Chq_No], [VH_Chq_Dt], [VH_Clr_Dt], [VH_Ref_No], [VH_Ref_Dt], [VH_Vch_Ref_No], [VH_Lgr_Cd], [VH_Acc_Cd], [VH_Amt], [VH_Cr_Dr], [VH_ABS_Amt], [VH_Ent_By], [VH_Ent_Dt], [VH_Upd_By], [VH_Upd_Dt], [VH_Conf_By], [VH_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000043', CAST(0x0000A58D00000000 AS DateTime), N'CHAHAWALA                                                                                           ', N'CASH', N'CP', N'01140002', CAST(0x0000A58D00000000 AS DateTime), N'      ', CAST(0x0000000000000000 AS DateTime), NULL, N'REF-CP                                  ', CAST(0x0000A58D00000000 AS DateTime), N'000020', N'00', N'A00004', -500.0000, N'Cr', 500.0000, N'1    ', CAST(0x0000A58D014EA2A1 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014EBD7E AS DateTime))
INSERT [dbo].[JR_Voucher_Header] ([VH_Fin_Yr], [VH_Inst_Cd], [VH_Inst_Typ], [VH_Brn_Cd], [VH_Lnk_No], [VH_Lnk_Dt], [VH_Pty_Nm], [VH_Dbk_Cd], [VH_Trn_Typ], [VH_Vch_No], [VH_Vch_Dt], [VH_Chq_No], [VH_Chq_Dt], [VH_Clr_Dt], [VH_Ref_No], [VH_Ref_Dt], [VH_Vch_Ref_No], [VH_Lgr_Cd], [VH_Acc_Cd], [VH_Amt], [VH_Cr_Dr], [VH_ABS_Amt], [VH_Ent_By], [VH_Ent_Dt], [VH_Upd_By], [VH_Upd_Dt], [VH_Conf_By], [VH_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000044', CAST(0x0000A58D00000000 AS DateTime), N'SUSHIL                                                                                              ', N'BANK', N'BR', N'01140001', CAST(0x0000A58D00000000 AS DateTime), N'120099', CAST(0x0000A58D00000000 AS DateTime), NULL, N'RES-BANK                                ', CAST(0x0000A58D00000000 AS DateTime), N'000021', N'00', N'A00005', 3000.0000, N'Dr', 3000.0000, N'1    ', CAST(0x0000A58D014F992A AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014FB4C4 AS DateTime))
INSERT [dbo].[JR_Voucher_Header] ([VH_Fin_Yr], [VH_Inst_Cd], [VH_Inst_Typ], [VH_Brn_Cd], [VH_Lnk_No], [VH_Lnk_Dt], [VH_Pty_Nm], [VH_Dbk_Cd], [VH_Trn_Typ], [VH_Vch_No], [VH_Vch_Dt], [VH_Chq_No], [VH_Chq_Dt], [VH_Clr_Dt], [VH_Ref_No], [VH_Ref_Dt], [VH_Vch_Ref_No], [VH_Lgr_Cd], [VH_Acc_Cd], [VH_Amt], [VH_Cr_Dr], [VH_ABS_Amt], [VH_Ent_By], [VH_Ent_Dt], [VH_Upd_By], [VH_Upd_Dt], [VH_Conf_By], [VH_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000045', CAST(0x0000A58D00000000 AS DateTime), N'SWEEPER                                                                                             ', N'BANK', N'BP', N'01140002', CAST(0x0000A58D00000000 AS DateTime), N'987867', CAST(0x0000A58D00000000 AS DateTime), NULL, N'REF BANK                                ', CAST(0x0000A58D00000000 AS DateTime), N'000022', N'00', N'A00005', -1000.0000, N'Cr', 1000.0000, N'1    ', CAST(0x0000A58D015017E3 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D01502650 AS DateTime))
INSERT [dbo].[JR_Voucher_Header] ([VH_Fin_Yr], [VH_Inst_Cd], [VH_Inst_Typ], [VH_Brn_Cd], [VH_Lnk_No], [VH_Lnk_Dt], [VH_Pty_Nm], [VH_Dbk_Cd], [VH_Trn_Typ], [VH_Vch_No], [VH_Vch_Dt], [VH_Chq_No], [VH_Chq_Dt], [VH_Clr_Dt], [VH_Ref_No], [VH_Ref_Dt], [VH_Vch_Ref_No], [VH_Lgr_Cd], [VH_Acc_Cd], [VH_Amt], [VH_Cr_Dr], [VH_ABS_Amt], [VH_Ent_By], [VH_Ent_Dt], [VH_Upd_By], [VH_Upd_Dt], [VH_Conf_By], [VH_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000046', CAST(0x0000A58E00000000 AS DateTime), N'15JAN                                                                                               ', N'CASH', N'CR', N'01150003', CAST(0x0000A58E00000000 AS DateTime), N'      ', CAST(0x0000000000000000 AS DateTime), NULL, N'REF15                                   ', CAST(0x0000A58E00000000 AS DateTime), N'000023', N'00', N'A00004', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58E013F1284 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E013F25DD AS DateTime))
INSERT [dbo].[JR_Voucher_Header] ([VH_Fin_Yr], [VH_Inst_Cd], [VH_Inst_Typ], [VH_Brn_Cd], [VH_Lnk_No], [VH_Lnk_Dt], [VH_Pty_Nm], [VH_Dbk_Cd], [VH_Trn_Typ], [VH_Vch_No], [VH_Vch_Dt], [VH_Chq_No], [VH_Chq_Dt], [VH_Clr_Dt], [VH_Ref_No], [VH_Ref_Dt], [VH_Vch_Ref_No], [VH_Lgr_Cd], [VH_Acc_Cd], [VH_Amt], [VH_Cr_Dr], [VH_ABS_Amt], [VH_Ent_By], [VH_Ent_Dt], [VH_Upd_By], [VH_Upd_Dt], [VH_Conf_By], [VH_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000047', CAST(0x0000A58E00000000 AS DateTime), N'CHECK TEST                                                                                          ', N'BANK', N'BP', N'01150003', CAST(0x0000A58E00000000 AS DateTime), N'898989', CAST(0x0000A58E00000000 AS DateTime), NULL, N'BANKPAY                                 ', CAST(0x0000A58E00000000 AS DateTime), N'000024', N'00', N'A00005', -300.0000, N'Cr', 300.0000, N'1    ', CAST(0x0000A58E014576CA AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E01458674 AS DateTime))
INSERT [dbo].[JR_Voucher_Header] ([VH_Fin_Yr], [VH_Inst_Cd], [VH_Inst_Typ], [VH_Brn_Cd], [VH_Lnk_No], [VH_Lnk_Dt], [VH_Pty_Nm], [VH_Dbk_Cd], [VH_Trn_Typ], [VH_Vch_No], [VH_Vch_Dt], [VH_Chq_No], [VH_Chq_Dt], [VH_Clr_Dt], [VH_Ref_No], [VH_Ref_Dt], [VH_Vch_Ref_No], [VH_Lgr_Cd], [VH_Acc_Cd], [VH_Amt], [VH_Cr_Dr], [VH_ABS_Amt], [VH_Ent_By], [VH_Ent_Dt], [VH_Upd_By], [VH_Upd_Dt], [VH_Conf_By], [VH_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000048', CAST(0x0000A58E00000000 AS DateTime), N'PAYMENTVH                                                                                           ', N'CASH', N'CP', N'01150004', CAST(0x0000A58E00000000 AS DateTime), N'      ', CAST(0x0000000000000000 AS DateTime), NULL, N'REFPAY                                  ', CAST(0x0000A58E00000000 AS DateTime), N'000025', N'00', N'A00004', -100.0000, N'Cr', 100.0000, N'1    ', CAST(0x0000A58E015B8662 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E015B9019 AS DateTime))
INSERT [dbo].[JR_Voucher_Header] ([VH_Fin_Yr], [VH_Inst_Cd], [VH_Inst_Typ], [VH_Brn_Cd], [VH_Lnk_No], [VH_Lnk_Dt], [VH_Pty_Nm], [VH_Dbk_Cd], [VH_Trn_Typ], [VH_Vch_No], [VH_Vch_Dt], [VH_Chq_No], [VH_Chq_Dt], [VH_Clr_Dt], [VH_Ref_No], [VH_Ref_Dt], [VH_Vch_Ref_No], [VH_Lgr_Cd], [VH_Acc_Cd], [VH_Amt], [VH_Cr_Dr], [VH_ABS_Amt], [VH_Ent_By], [VH_Ent_Dt], [VH_Upd_By], [VH_Upd_Dt], [VH_Conf_By], [VH_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000049', CAST(0x0000A58E00000000 AS DateTime), N'PANKAJ                                                                                              ', N'BANK', N'BP', N'01150004', CAST(0x0000A58E00000000 AS DateTime), N'12345 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'REF0008                                 ', CAST(0x0000A58E00000000 AS DateTime), N'000026', N'00', N'A00005', -300.0000, N'Cr', 300.0000, N'1    ', CAST(0x0000A58E015EFBDC AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E015F0A8A AS DateTime))
INSERT [dbo].[JR_Voucher_Header] ([VH_Fin_Yr], [VH_Inst_Cd], [VH_Inst_Typ], [VH_Brn_Cd], [VH_Lnk_No], [VH_Lnk_Dt], [VH_Pty_Nm], [VH_Dbk_Cd], [VH_Trn_Typ], [VH_Vch_No], [VH_Vch_Dt], [VH_Chq_No], [VH_Chq_Dt], [VH_Clr_Dt], [VH_Ref_No], [VH_Ref_Dt], [VH_Vch_Ref_No], [VH_Lgr_Cd], [VH_Acc_Cd], [VH_Amt], [VH_Cr_Dr], [VH_ABS_Amt], [VH_Ent_By], [VH_Ent_Dt], [VH_Upd_By], [VH_Upd_Dt], [VH_Conf_By], [VH_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000050', CAST(0x0000A58E00000000 AS DateTime), N'BOOK DEPOT                                                                                          ', N'BANK', N'BR', N'01150005', CAST(0x0000A58E00000000 AS DateTime), N'987655', CAST(0x0000A58E00000000 AS DateTime), NULL, N'REF0006                                 ', CAST(0x0000A58E00000000 AS DateTime), N'000027', N'00', N'A00005', 500.0000, N'Dr', 500.0000, N'1    ', CAST(0x0000A58E015F9ECA AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E015FAE28 AS DateTime))*/
/****** Object:  Table [dbo].[JR_Voucher_Detail]    Script Date: 01/16/2016 14:31:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Voucher_Detail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JR_Voucher_Detail](
	[VD_Fin_Yr] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VD_Inst_Cd] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VD_Inst_Typ] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VD_Brn_Cd] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VD_Lnk_No] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VD_Seq_No] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VD_Dbk_Cd] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Trn_Typ] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Vch_No] [char](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Vch_Ref_No] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Ref_No] [char](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Ref_Dt] [datetime] NULL,
	[VD_Narr] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Lgr_Cd] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Acc_Cd] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Amt] [money] NULL,
	[VD_Cr_Dr] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_ABS_Amt] [money] NULL,
	[VD_Ent_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Ent_Dt] [datetime] NULL,
	[VD_Upd_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Upd_Dt] [datetime] NULL,
	[VD_Conf_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VD_Conf_Dt] [datetime] NULL,
 CONSTRAINT [pk_voucherdetail_JR] PRIMARY KEY CLUSTERED 
(
	[VD_Fin_Yr] ASC,
	[VD_Inst_Cd] ASC,
	[VD_Inst_Typ] ASC,
	[VD_Brn_Cd] ASC,
	[VD_Lnk_No] ASC,
	[VD_Seq_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/*INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', N'001', N'CASH', N'CR', N'01140001', N'000019', N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), N'tution fee                                                                                          ', N'00', N'A00002', -1000.0000, N'Cr', 1000.0000, N'1    ', CAST(0x0000A58D014D1810 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014D8F13 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', N'002', N'CASH', N'CR', N'01140001', N'000019', N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), N'library                                                                                             ', N'00', N'A00003', -1000.0000, N'Cr', 1000.0000, N'1    ', CAST(0x0000A58D014D1817 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014D8F13 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', N'003', N'CASH', N'CR', N'01140001', N'000019', N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), N'to give                                                                                             ', N'00', N'A00001', 500.0000, N'Dr', 500.0000, N'1    ', CAST(0x0000A58D014D181E AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014D8F13 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', N'004', N'CASH', N'CR', N'01140001', N'000019', N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), N'suffice                                                                                             ', N'00', N'A00002', -500.0000, N'Cr', 500.0000, N'1    ', CAST(0x0000A58D014D1830 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014D8F13 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000043', N'001', N'CASH', N'CP', N'01140002', N'000020', N'REF-CP                                  ', CAST(0x0000A58D00000000 AS DateTime), N'chahapatti                                                                                          ', N'00', N'A00002', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58D014EA294 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014EBD7E AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000043', N'002', N'CASH', N'CP', N'01140002', N'000020', N'REF-CP                                  ', CAST(0x0000A58D00000000 AS DateTime), N'milk                                                                                                ', N'00', N'A00001', 300.0000, N'Dr', 300.0000, N'1    ', CAST(0x0000A58D014EA29B AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014EBD7E AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000044', N'001', N'BANK', N'BR', N'01140001', N'000021', N'RES-BANK                                ', CAST(0x0000A58D00000000 AS DateTime), N'bank details                                                                                        ', N'00', N'A00002', -3000.0000, N'Cr', 3000.0000, N'1    ', CAST(0x0000A58D014F9923 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D014FB4C4 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000045', N'001', N'BANK', N'BP', N'01140002', N'000022', N'REF BANK                                ', CAST(0x0000A58D00000000 AS DateTime), N'vd1                                                                                                 ', N'00', N'A00002', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58D015017D3 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D01502650 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000045', N'002', N'BANK', N'BP', N'01140002', N'000022', N'REF BANK                                ', CAST(0x0000A58D00000000 AS DateTime), N'vd2                                                                                                 ', N'00', N'A00003', 900.0000, N'Dr', 900.0000, N'1    ', CAST(0x0000A58D015017D6 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D01502650 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000045', N'003', N'BANK', N'BP', N'01140002', N'000022', N'REF BANK                                ', CAST(0x0000A58D00000000 AS DateTime), N'vd3                                                                                                 ', N'00', N'A00002', -100.0000, N'Cr', 100.0000, N'1    ', CAST(0x0000A58D015017DD AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58D01502650 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000046', N'001', N'CASH', N'CR', N'01150003', N'000023', N'REF15                                   ', CAST(0x0000A58E00000000 AS DateTime), N'200 ale                                                                                             ', N'00', N'A00002', -200.0000, N'Cr', 200.0000, N'1    ', CAST(0x0000A58E013F127B AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E013F25E3 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000047', N'001', N'BANK', N'BP', N'01150003', N'000024', N'BANKPAY                                 ', CAST(0x0000A58E00000000 AS DateTime), N'kdjsf uefkjsdf jhsgd fjsd hfsdg hjgfsdj gdfkh gdfskh ghfdg                                          ', N'00', N'A00006', 100.0000, N'Dr', 100.0000, N'1    ', CAST(0x0000A58E014576C1 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E01458675 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000047', N'002', N'BANK', N'BP', N'01150003', N'000024', N'BANKPAY                                 ', CAST(0x0000A58E00000000 AS DateTime), N'slkh jsdgkj dfkgh dkj fhgkdhgkd                                                                     ', N'00', N'A00003', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58E01455D2D AS DateTime), N'1    ', CAST(0x0000A58E014576C4 AS DateTime), N'1    ', CAST(0x0000A58E01458675 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000048', N'001', N'CASH', N'CP', N'01150004', N'000025', N'REFPAY                                  ', CAST(0x0000A58E00000000 AS DateTime), N'gelele                                                                                              ', N'00', N'A00003', 100.0000, N'Dr', 100.0000, N'1    ', CAST(0x0000A58E015B8651 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E015B9019 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000049', N'001', N'BANK', N'BP', N'01150004', N'000026', N'REF0008                                 ', CAST(0x0000A58E00000000 AS DateTime), N'VD1 Value 2                                                                                         ', N'00', N'A00002', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58E015EFBCA AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E015F0A8B AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000049', N'002', N'BANK', N'BP', N'01150004', N'000026', N'REF0008                                 ', CAST(0x0000A58E00000000 AS DateTime), N'VD2 Value                                                                                           ', N'00', N'A00006', 100.0000, N'Dr', 100.0000, N'1    ', CAST(0x0000A58E015EFBD4 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E015F0A8B AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000050', N'001', N'BANK', N'BR', N'01150005', N'000027', N'REF0006                                 ', CAST(0x0000A58E00000000 AS DateTime), N'BD1                                                                                                 ', N'00', N'A00006', -200.0000, N'Cr', 200.0000, N'1    ', CAST(0x0000A58E015F9E9C AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E015FAE28 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000050', N'002', N'BANK', N'BR', N'01150005', N'000027', N'REF0006                                 ', CAST(0x0000A58E00000000 AS DateTime), N'BD2                                                                                                 ', N'00', N'A00003', -400.0000, N'Cr', 400.0000, N'1    ', CAST(0x0000A58E015F9EA3 AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E015FAE28 AS DateTime))
INSERT [dbo].[JR_Voucher_Detail] ([VD_Fin_Yr], [VD_Inst_Cd], [VD_Inst_Typ], [VD_Brn_Cd], [VD_Lnk_No], [VD_Seq_No], [VD_Dbk_Cd], [VD_Trn_Typ], [VD_Vch_No], [VD_Vch_Ref_No], [VD_Ref_No], [VD_Ref_Dt], [VD_Narr], [VD_Lgr_Cd], [VD_Acc_Cd], [VD_Amt], [VD_Cr_Dr], [VD_ABS_Amt], [VD_Ent_By], [VD_Ent_Dt], [VD_Upd_By], [VD_Upd_Dt], [VD_Conf_By], [VD_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000050', N'003', N'BANK', N'BR', N'01150005', N'000027', N'REF0006                                 ', CAST(0x0000A58E00000000 AS DateTime), N'DR type val                                                                                         ', N'00', N'A00002', 100.0000, N'Dr', 100.0000, N'1    ', CAST(0x0000A58E015F9EAC AS DateTime), NULL, NULL, N'1    ', CAST(0x0000A58E015FAE28 AS DateTime))*/
/****** Object:  Table [dbo].[JR_Ledger]    Script Date: 01/16/2016 14:31:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Ledger]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JR_Ledger](
	[Lgr_Fin_Yr] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Inst_Cd] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Inst_Typ] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Brn_Cd] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Lnk_No] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Lnk_Dt] [datetime] NULL,
	[Lgr_Dbk_Cd] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Trn_Typ] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Vch_No] [char](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Vch_Dt] [datetime] NULL,
	[Lgr_Vch_Ref_No] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Seq_No] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Narr] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Chq_No] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Chq_Dt] [datetime] NULL,
	[Lgr_Ref_No] [char](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Ref_Dt] [datetime] NULL,
	[Lgr_Lgr_Cd] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Acc_Cd] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Amt] [money] NULL,
	[Lgr_Cr_Dr] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_ABS_Amt] [money] NULL,
	[Lgr_Ent_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Ent_Dt] [datetime] NULL,
	[Lgr_Upd_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Upd_Dt] [datetime] NULL,
	[Lgr_Conf_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lgr_Conf_Dt] [datetime] NULL
)
END
GO
/*INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', CAST(0x0000A58D00000000 AS DateTime), N'CASH', N'CR', N'01140001', CAST(0x0000A58D00000000 AS DateTime), N'000019', N'000', N'SNEHAL                                                                                              ', N'      ', CAST(0x0000000000000000 AS DateTime), N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00004', 2000.0000, N'Dr', 2000.0000, N'1    ', CAST(0x0000A58D014D8F23 AS DateTime), N'1    ', CAST(0x0000A58D014D8F23 AS DateTime), N'1    ', CAST(0x0000A58D014D8F23 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', CAST(0x0000A58D00000000 AS DateTime), N'CASH', N'CR', N'01140001', CAST(0x0000A58D00000000 AS DateTime), N'000019', N'001', N'tution fee                                                                                          ', NULL, NULL, N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00002', -1000.0000, N'Cr', 1000.0000, N'1    ', CAST(0x0000A58D014D9093 AS DateTime), N'1    ', CAST(0x0000A58D014D9093 AS DateTime), N'1    ', CAST(0x0000A58D014D9093 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', CAST(0x0000A58D00000000 AS DateTime), N'CASH', N'CR', N'01140001', CAST(0x0000A58D00000000 AS DateTime), N'000019', N'002', N'library                                                                                             ', NULL, NULL, N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00003', -1000.0000, N'Cr', 1000.0000, N'1    ', CAST(0x0000A58D014D9093 AS DateTime), N'1    ', CAST(0x0000A58D014D9093 AS DateTime), N'1    ', CAST(0x0000A58D014D9093 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', CAST(0x0000A58D00000000 AS DateTime), N'CASH', N'CR', N'01140001', CAST(0x0000A58D00000000 AS DateTime), N'000019', N'003', N'to give                                                                                             ', NULL, NULL, N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00001', 500.0000, N'Dr', 500.0000, N'1    ', CAST(0x0000A58D014D9093 AS DateTime), N'1    ', CAST(0x0000A58D014D9093 AS DateTime), N'1    ', CAST(0x0000A58D014D9093 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000042', CAST(0x0000A58D00000000 AS DateTime), N'CASH', N'CR', N'01140001', CAST(0x0000A58D00000000 AS DateTime), N'000019', N'004', N'suffice                                                                                             ', NULL, NULL, N'REF-CASH1                               ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00002', -500.0000, N'Cr', 500.0000, N'1    ', CAST(0x0000A58D014D9093 AS DateTime), N'1    ', CAST(0x0000A58D014D9093 AS DateTime), N'1    ', CAST(0x0000A58D014D9093 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000043', CAST(0x0000A58D00000000 AS DateTime), N'CASH', N'CP', N'01140002', CAST(0x0000A58D00000000 AS DateTime), N'000020', N'000', N'CHAHAWALA                                                                                           ', N'      ', CAST(0x0000000000000000 AS DateTime), N'REF-CP                                  ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00004', -500.0000, N'Cr', 500.0000, N'1    ', CAST(0x0000A58D014EBD82 AS DateTime), N'1    ', CAST(0x0000A58D014EBD82 AS DateTime), N'1    ', CAST(0x0000A58D014EBD82 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000043', CAST(0x0000A58D00000000 AS DateTime), N'CASH', N'CP', N'01140002', CAST(0x0000A58D00000000 AS DateTime), N'000020', N'001', N'chahapatti                                                                                          ', NULL, NULL, N'REF-CP                                  ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00002', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58D014EBD95 AS DateTime), N'1    ', CAST(0x0000A58D014EBD95 AS DateTime), N'1    ', CAST(0x0000A58D014EBD95 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000043', CAST(0x0000A58D00000000 AS DateTime), N'CASH', N'CP', N'01140002', CAST(0x0000A58D00000000 AS DateTime), N'000020', N'002', N'milk                                                                                                ', NULL, NULL, N'REF-CP                                  ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00001', 300.0000, N'Dr', 300.0000, N'1    ', CAST(0x0000A58D014EBD95 AS DateTime), N'1    ', CAST(0x0000A58D014EBD95 AS DateTime), N'1    ', CAST(0x0000A58D014EBD95 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000044', CAST(0x0000A58D00000000 AS DateTime), N'BANK', N'BR', N'01140001', CAST(0x0000A58D00000000 AS DateTime), N'000021', N'000', N'SUSHIL                                                                                              ', N'120099', CAST(0x0000A58D00000000 AS DateTime), N'RES-BANK                                ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00005', 3000.0000, N'Dr', 3000.0000, N'1    ', CAST(0x0000A58D014FB4C7 AS DateTime), N'1    ', CAST(0x0000A58D014FB4C7 AS DateTime), N'1    ', CAST(0x0000A58D014FB4C7 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000044', CAST(0x0000A58D00000000 AS DateTime), N'BANK', N'BR', N'01140001', CAST(0x0000A58D00000000 AS DateTime), N'000021', N'001', N'bank details                                                                                        ', NULL, NULL, N'RES-BANK                                ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00002', -3000.0000, N'Cr', 3000.0000, N'1    ', CAST(0x0000A58D014FB4CF AS DateTime), N'1    ', CAST(0x0000A58D014FB4CF AS DateTime), N'1    ', CAST(0x0000A58D014FB4CF AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000045', CAST(0x0000A58D00000000 AS DateTime), N'BANK', N'BP', N'01140002', CAST(0x0000A58D00000000 AS DateTime), N'000022', N'000', N'SWEEPER                                                                                             ', N'987867', CAST(0x0000A58D00000000 AS DateTime), N'REF BANK                                ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00005', -1000.0000, N'Cr', 1000.0000, N'1    ', CAST(0x0000A58D0150265E AS DateTime), N'1    ', CAST(0x0000A58D0150265E AS DateTime), N'1    ', CAST(0x0000A58D0150265E AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000045', CAST(0x0000A58D00000000 AS DateTime), N'BANK', N'BP', N'01140002', CAST(0x0000A58D00000000 AS DateTime), N'000022', N'001', N'vd1                                                                                                 ', NULL, NULL, N'REF BANK                                ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00002', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58D01502665 AS DateTime), N'1    ', CAST(0x0000A58D01502665 AS DateTime), N'1    ', CAST(0x0000A58D01502665 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000045', CAST(0x0000A58D00000000 AS DateTime), N'BANK', N'BP', N'01140002', CAST(0x0000A58D00000000 AS DateTime), N'000022', N'002', N'vd2                                                                                                 ', NULL, NULL, N'REF BANK                                ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00003', 900.0000, N'Dr', 900.0000, N'1    ', CAST(0x0000A58D01502665 AS DateTime), N'1    ', CAST(0x0000A58D01502665 AS DateTime), N'1    ', CAST(0x0000A58D01502665 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000045', CAST(0x0000A58D00000000 AS DateTime), N'BANK', N'BP', N'01140002', CAST(0x0000A58D00000000 AS DateTime), N'000022', N'003', N'vd3                                                                                                 ', NULL, NULL, N'REF BANK                                ', CAST(0x0000A58D00000000 AS DateTime), NULL, N'A00002', -100.0000, N'Cr', 100.0000, N'1    ', CAST(0x0000A58D01502665 AS DateTime), N'1    ', CAST(0x0000A58D01502665 AS DateTime), N'1    ', CAST(0x0000A58D01502665 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000046', CAST(0x0000A58E00000000 AS DateTime), N'CASH', N'CR', N'01150003', CAST(0x0000A58E00000000 AS DateTime), N'000023', N'000', N'15JAN                                                                                               ', N'      ', CAST(0x0000000000000000 AS DateTime), N'REF15                                   ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00004', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58E013F2605 AS DateTime), N'1    ', CAST(0x0000A58E013F2605 AS DateTime), N'1    ', CAST(0x0000A58E013F2605 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000046', CAST(0x0000A58E00000000 AS DateTime), N'CASH', N'CR', N'01150003', CAST(0x0000A58E00000000 AS DateTime), N'000023', N'001', N'200 ale                                                                                             ', NULL, NULL, N'REF15                                   ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00002', -200.0000, N'Cr', 200.0000, N'1    ', CAST(0x0000A58E013F2787 AS DateTime), N'1    ', CAST(0x0000A58E013F2787 AS DateTime), N'1    ', CAST(0x0000A58E013F2787 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000047', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BP', N'01150003', CAST(0x0000A58E00000000 AS DateTime), N'000024', N'000', N'CHECK TEST                                                                                          ', N'898989', CAST(0x0000A58E00000000 AS DateTime), N'BANKPAY                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00005', -300.0000, N'Cr', 300.0000, N'1    ', CAST(0x0000A58E0145867A AS DateTime), N'1    ', CAST(0x0000A58E0145867A AS DateTime), N'1    ', CAST(0x0000A58E0145867A AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000047', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BP', N'01150003', CAST(0x0000A58E00000000 AS DateTime), N'000024', N'001', N'kdjsf uefkjsdf jhsgd fjsd hfsdg hjgfsdj gdfkh gdfskh ghfdg                                          ', NULL, NULL, N'BANKPAY                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00006', 100.0000, N'Dr', 100.0000, N'1    ', CAST(0x0000A58E01458688 AS DateTime), N'1    ', CAST(0x0000A58E01458688 AS DateTime), N'1    ', CAST(0x0000A58E01458688 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000047', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BP', N'01150003', CAST(0x0000A58E00000000 AS DateTime), N'000024', N'002', N'slkh jsdgkj dfkgh dkj fhgkdhgkd                                                                     ', NULL, NULL, N'BANKPAY                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00003', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58E01458688 AS DateTime), N'1    ', CAST(0x0000A58E01458688 AS DateTime), N'1    ', CAST(0x0000A58E01458688 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000048', CAST(0x0000A58E00000000 AS DateTime), N'CASH', N'CP', N'01150004', CAST(0x0000A58E00000000 AS DateTime), N'000025', N'000', N'PAYMENTVH                                                                                           ', N'      ', CAST(0x0000000000000000 AS DateTime), N'REFPAY                                  ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00004', -100.0000, N'Cr', 100.0000, N'1    ', CAST(0x0000A58E015B9025 AS DateTime), N'1    ', CAST(0x0000A58E015B9025 AS DateTime), N'1    ', CAST(0x0000A58E015B9025 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000048', CAST(0x0000A58E00000000 AS DateTime), N'CASH', N'CP', N'01150004', CAST(0x0000A58E00000000 AS DateTime), N'000025', N'001', N'gelele                                                                                              ', NULL, NULL, N'REFPAY                                  ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00003', 100.0000, N'Dr', 100.0000, N'1    ', CAST(0x0000A58E015B908E AS DateTime), N'1    ', CAST(0x0000A58E015B908E AS DateTime), N'1    ', CAST(0x0000A58E015B908E AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000049', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BP', N'01150004', CAST(0x0000A58E00000000 AS DateTime), N'000026', N'000', N'PANKAJ                                                                                              ', N'12345 ', CAST(0x0000A58E00000000 AS DateTime), N'REF0008                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00005', -300.0000, N'Cr', 300.0000, N'1    ', CAST(0x0000A58E015F0A8F AS DateTime), N'1    ', CAST(0x0000A58E015F0A8F AS DateTime), N'1    ', CAST(0x0000A58E015F0A8F AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000049', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BP', N'01150004', CAST(0x0000A58E00000000 AS DateTime), N'000026', N'001', N'VD1 Value 2                                                                                         ', NULL, NULL, N'REF0008                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00002', 200.0000, N'Dr', 200.0000, N'1    ', CAST(0x0000A58E015F0AF3 AS DateTime), N'1    ', CAST(0x0000A58E015F0AF3 AS DateTime), N'1    ', CAST(0x0000A58E015F0AF3 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000049', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BP', N'01150004', CAST(0x0000A58E00000000 AS DateTime), N'000026', N'002', N'VD2 Value                                                                                           ', NULL, NULL, N'REF0008                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00006', 100.0000, N'Dr', 100.0000, N'1    ', CAST(0x0000A58E015F0AF3 AS DateTime), N'1    ', CAST(0x0000A58E015F0AF3 AS DateTime), N'1    ', CAST(0x0000A58E015F0AF3 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000050', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BR', N'01150005', CAST(0x0000A58E00000000 AS DateTime), N'000027', N'000', N'BOOK DEPOT                                                                                          ', N'987655', CAST(0x0000A58E00000000 AS DateTime), N'REF0006                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00005', 500.0000, N'Dr', 500.0000, N'1    ', CAST(0x0000A58E015FAE32 AS DateTime), N'1    ', CAST(0x0000A58E015FAE32 AS DateTime), N'1    ', CAST(0x0000A58E015FAE32 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000050', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BR', N'01150005', CAST(0x0000A58E00000000 AS DateTime), N'000027', N'001', N'BD1                                                                                                 ', NULL, NULL, N'REF0006                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00006', -200.0000, N'Cr', 200.0000, N'1    ', CAST(0x0000A58E015FAE62 AS DateTime), N'1    ', CAST(0x0000A58E015FAE62 AS DateTime), N'1    ', CAST(0x0000A58E015FAE62 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000050', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BR', N'01150005', CAST(0x0000A58E00000000 AS DateTime), N'000027', N'002', N'BD2                                                                                                 ', NULL, NULL, N'REF0006                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00003', -400.0000, N'Cr', 400.0000, N'1    ', CAST(0x0000A58E015FAE62 AS DateTime), N'1    ', CAST(0x0000A58E015FAE62 AS DateTime), N'1    ', CAST(0x0000A58E015FAE62 AS DateTime))
INSERT [dbo].[JR_Ledger] ([Lgr_Fin_Yr], [Lgr_Inst_Cd], [Lgr_Inst_Typ], [Lgr_Brn_Cd], [Lgr_Lnk_No], [Lgr_Lnk_Dt], [Lgr_Dbk_Cd], [Lgr_Trn_Typ], [Lgr_Vch_No], [Lgr_Vch_Dt], [Lgr_Vch_Ref_No], [Lgr_Seq_No], [Lgr_Narr], [Lgr_Chq_No], [Lgr_Chq_Dt], [Lgr_Ref_No], [Lgr_Ref_Dt], [Lgr_Lgr_Cd], [Lgr_Acc_Cd], [Lgr_Amt], [Lgr_Cr_Dr], [Lgr_ABS_Amt], [Lgr_Ent_By], [Lgr_Ent_Dt], [Lgr_Upd_By], [Lgr_Upd_Dt], [Lgr_Conf_By], [Lgr_Conf_Dt]) VALUES (N'2015', N'100  ', N'JR', N'HO ', N'000000000050', CAST(0x0000A58E00000000 AS DateTime), N'BANK', N'BR', N'01150005', CAST(0x0000A58E00000000 AS DateTime), N'000027', N'003', N'DR type val                                                                                         ', NULL, NULL, N'REF0006                                 ', CAST(0x0000A58E00000000 AS DateTime), NULL, N'A00002', 100.0000, N'Dr', 100.0000, N'1    ', CAST(0x0000A58E015FAE62 AS DateTime), N'1    ', CAST(0x0000A58E015FAE62 AS DateTime), N'1    ', CAST(0x0000A58E015FAE62 AS DateTime))*/
/****** Object:  Table [dbo].[JR_Daybooks]    Script Date: 01/16/2016 14:31:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Daybooks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JR_Daybooks](
	[DM_Fin_Yr] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DM_Inst_Cd] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DM_Inst_Typ] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DM_Brn_Cd] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DM_Dbk_Cd] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DM_Dbk_Nm] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DM_Dbk_Typ] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DM_Acc_Cd] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DM_Bnk_Nm] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DM_Bnk_Brn] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DM_Bnk_AcNo] [char](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DM_Bnk_OD] [money] NULL,
	[DM_Vch_04] [int] NULL,
	[DM_Lst_04] [datetime] NULL,
	[DM_Vch_05] [int] NULL,
	[DM_Lst_05] [datetime] NULL,
	[DM_Vch_06] [int] NULL,
	[DM_Lst_06] [datetime] NULL,
	[DM_Vch_07] [int] NULL,
	[DM_Lst_07] [datetime] NULL,
	[DM_Vch_08] [int] NULL,
	[DM_Lst_08] [datetime] NULL,
	[DM_Vch_09] [int] NULL,
	[DM_Lst_09] [datetime] NULL,
	[DM_Vch_10] [int] NULL,
	[DM_Lst_10] [datetime] NULL,
	[DM_Vch_11] [int] NULL,
	[DM_Lst_11] [datetime] NULL,
	[DM_Vch_12] [int] NULL,
	[DM_Lst_12] [datetime] NULL,
	[DM_Vch_01] [int] NULL,
	[DM_Lst_01] [datetime] NULL,
	[DM_Vch_02] [int] NULL,
	[DM_Lst_02] [datetime] NULL,
	[DM_Vch_03] [int] NULL,
	[DM_Lst_03] [datetime] NULL,
	[DM_Ent_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DM_Ent_Dt] [datetime] NULL,
	[DM_Upd_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DM_Upd_Dt] [datetime] NULL,
 CONSTRAINT [pk_daybook_JR] PRIMARY KEY CLUSTERED 
(
	[DM_Fin_Yr] ASC,
	[DM_Inst_Cd] ASC,
	[DM_Inst_Typ] ASC,
	[DM_Brn_Cd] ASC,
	[DM_Dbk_Cd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/*INSERT [dbo].[JR_Daybooks] ([DM_Fin_Yr], [DM_Inst_Cd], [DM_Inst_Typ], [DM_Brn_Cd], [DM_Dbk_Cd], [DM_Dbk_Nm], [DM_Dbk_Typ], [DM_Acc_Cd], [DM_Bnk_Nm], [DM_Bnk_Brn], [DM_Bnk_AcNo], [DM_Bnk_OD], [DM_Vch_04], [DM_Lst_04], [DM_Vch_05], [DM_Lst_05], [DM_Vch_06], [DM_Lst_06], [DM_Vch_07], [DM_Lst_07], [DM_Vch_08], [DM_Lst_08], [DM_Vch_09], [DM_Lst_09], [DM_Vch_10], [DM_Lst_10], [DM_Vch_11], [DM_Lst_11], [DM_Vch_12], [DM_Lst_12], [DM_Vch_01], [DM_Lst_01], [DM_Vch_02], [DM_Lst_02], [DM_Vch_03], [DM_Lst_03], [DM_Ent_By], [DM_Ent_Dt], [DM_Upd_By], [DM_Upd_Dt]) VALUES (N'2015', N'100  ', N'JR', N'01 ', N'BANK', N'BANK DAYBOOK                                      ', N'B', N'A00005', N'SBI BANK                                          ', N'KATRAJ                        ', N'11111111        ', 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1    ', CAST(0x0000A58D014AC869 AS DateTime), NULL, NULL)
INSERT [dbo].[JR_Daybooks] ([DM_Fin_Yr], [DM_Inst_Cd], [DM_Inst_Typ], [DM_Brn_Cd], [DM_Dbk_Cd], [DM_Dbk_Nm], [DM_Dbk_Typ], [DM_Acc_Cd], [DM_Bnk_Nm], [DM_Bnk_Brn], [DM_Bnk_AcNo], [DM_Bnk_OD], [DM_Vch_04], [DM_Lst_04], [DM_Vch_05], [DM_Lst_05], [DM_Vch_06], [DM_Lst_06], [DM_Vch_07], [DM_Lst_07], [DM_Vch_08], [DM_Lst_08], [DM_Vch_09], [DM_Lst_09], [DM_Vch_10], [DM_Lst_10], [DM_Vch_11], [DM_Lst_11], [DM_Vch_12], [DM_Lst_12], [DM_Vch_01], [DM_Lst_01], [DM_Vch_02], [DM_Lst_02], [DM_Vch_03], [DM_Lst_03], [DM_Ent_By], [DM_Ent_Dt], [DM_Upd_By], [DM_Upd_Dt]) VALUES (N'2015', N'100  ', N'JR', N'01 ', N'CASH', N'CASH DAYBOOK                                      ', N'C', N'A00004', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1    ', CAST(0x0000A58D014A9CC7 AS DateTime), NULL, NULL)*/
/****** Object:  Table [dbo].[JR_Accounts]    Script Date: 01/16/2016 14:31:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JR_Accounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JR_Accounts](
	[AM_Fin_Yr] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AM_Inst_Cd] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AM_Inst_Typ] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AM_Brn_Cd] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AM_Lgr_Cd] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AM_Acc_Cd] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AM_Acc_Nm] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AM_Calls] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AM_Opn_Bal] [money] NULL,
	[AM_OB_Cr_Dr] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AM_ABS_Opn_Bal] [money] NULL,
	[AM_Net_04] [money] NULL,
	[AM_Net_05] [money] NULL,
	[AM_Net_06] [money] NULL,
	[AM_Net_07] [money] NULL,
	[AM_Net_08] [money] NULL,
	[AM_Net_09] [money] NULL,
	[AM_Net_10] [money] NULL,
	[AM_Net_11] [money] NULL,
	[AM_Net_12] [money] NULL,
	[AM_Net_01] [money] NULL,
	[AM_Net_02] [money] NULL,
	[AM_Net_03] [money] NULL,
	[AM_LLY_Budg] [money] NULL,
	[AM_LLY_Actu] [money] NULL,
	[AM_LYr_Budg] [money] NULL,
	[AM_LYr_Actu] [money] NULL,
	[AM_Cyr_Budg] [money] NULL,
	[AM_Ent_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AM_Ent_Dt] [datetime] NULL,
	[AM_Upd_By] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AM_Upd_Dt] [datetime] NULL,
 CONSTRAINT [pk_account_JR] PRIMARY KEY CLUSTERED 
(
	[AM_Fin_Yr] ASC,
	[AM_Inst_Cd] ASC,
	[AM_Inst_Typ] ASC,
	[AM_Brn_Cd] ASC,
	[AM_Lgr_Cd] ASC,
	[AM_Acc_Cd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/*INSERT [dbo].[JR_Accounts] ([AM_Fin_Yr], [AM_Inst_Cd], [AM_Inst_Typ], [AM_Brn_Cd], [AM_Lgr_Cd], [AM_Acc_Cd], [AM_Acc_Nm], [AM_Calls], [AM_Opn_Bal], [AM_OB_Cr_Dr], [AM_ABS_Opn_Bal], [AM_Net_04], [AM_Net_05], [AM_Net_06], [AM_Net_07], [AM_Net_08], [AM_Net_09], [AM_Net_10], [AM_Net_11], [AM_Net_12], [AM_Net_01], [AM_Net_02], [AM_Net_03], [AM_LLY_Budg], [AM_LLY_Actu], [AM_LYr_Budg], [AM_LYr_Actu], [AM_Cyr_Budg], [AM_Ent_By], [AM_Ent_Dt], [AM_Upd_By], [AM_Upd_Dt]) VALUES (N'2015', N'100  ', N'JR', N'01 ', N'00', N'A00001', N'CREDIT ACCOUNT 1                                  ', NULL, 0.0000, N'CR', 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N'1    ', CAST(0x0000A58D01490924 AS DateTime), NULL, NULL)
INSERT [dbo].[JR_Accounts] ([AM_Fin_Yr], [AM_Inst_Cd], [AM_Inst_Typ], [AM_Brn_Cd], [AM_Lgr_Cd], [AM_Acc_Cd], [AM_Acc_Nm], [AM_Calls], [AM_Opn_Bal], [AM_OB_Cr_Dr], [AM_ABS_Opn_Bal], [AM_Net_04], [AM_Net_05], [AM_Net_06], [AM_Net_07], [AM_Net_08], [AM_Net_09], [AM_Net_10], [AM_Net_11], [AM_Net_12], [AM_Net_01], [AM_Net_02], [AM_Net_03], [AM_LLY_Budg], [AM_LLY_Actu], [AM_LYr_Budg], [AM_LYr_Actu], [AM_Cyr_Budg], [AM_Ent_By], [AM_Ent_Dt], [AM_Upd_By], [AM_Upd_Dt]) VALUES (N'2015', N'100  ', N'JR', N'01 ', N'00', N'A00002', N'CREDIT ACCOUNT 2-LINKING                          ', NULL, 0.0000, N'CR', 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -3300.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N'1    ', CAST(0x0000A58D0149220F AS DateTime), NULL, NULL)
INSERT [dbo].[JR_Accounts] ([AM_Fin_Yr], [AM_Inst_Cd], [AM_Inst_Typ], [AM_Brn_Cd], [AM_Lgr_Cd], [AM_Acc_Cd], [AM_Acc_Nm], [AM_Calls], [AM_Opn_Bal], [AM_OB_Cr_Dr], [AM_ABS_Opn_Bal], [AM_Net_04], [AM_Net_05], [AM_Net_06], [AM_Net_07], [AM_Net_08], [AM_Net_09], [AM_Net_10], [AM_Net_11], [AM_Net_12], [AM_Net_01], [AM_Net_02], [AM_Net_03], [AM_LLY_Budg], [AM_LLY_Actu], [AM_LYr_Budg], [AM_LYr_Actu], [AM_Cyr_Budg], [AM_Ent_By], [AM_Ent_Dt], [AM_Upd_By], [AM_Upd_Dt]) VALUES (N'2015', N'100  ', N'JR', N'01 ', N'00', N'A00003', N'DEBIT ACOUNT 1                                    ', NULL, 0.0000, N'DR', 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -200.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N'1    ', CAST(0x0000A58D014939AC AS DateTime), NULL, NULL)
INSERT [dbo].[JR_Accounts] ([AM_Fin_Yr], [AM_Inst_Cd], [AM_Inst_Typ], [AM_Brn_Cd], [AM_Lgr_Cd], [AM_Acc_Cd], [AM_Acc_Nm], [AM_Calls], [AM_Opn_Bal], [AM_OB_Cr_Dr], [AM_ABS_Opn_Bal], [AM_Net_04], [AM_Net_05], [AM_Net_06], [AM_Net_07], [AM_Net_08], [AM_Net_09], [AM_Net_10], [AM_Net_11], [AM_Net_12], [AM_Net_01], [AM_Net_02], [AM_Net_03], [AM_LLY_Budg], [AM_LLY_Actu], [AM_LYr_Budg], [AM_LYr_Actu], [AM_Cyr_Budg], [AM_Ent_By], [AM_Ent_Dt], [AM_Upd_By], [AM_Upd_Dt]) VALUES (N'2015', N'100  ', N'JR', N'01 ', N'00', N'A00004', N'DEBIT ACOUNT 2 -LINKING                           ', N'CASH', 0.0000, N'DR', 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1600.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N'1    ', CAST(0x0000A58D01494DFB AS DateTime), NULL, NULL)
INSERT [dbo].[JR_Accounts] ([AM_Fin_Yr], [AM_Inst_Cd], [AM_Inst_Typ], [AM_Brn_Cd], [AM_Lgr_Cd], [AM_Acc_Cd], [AM_Acc_Nm], [AM_Calls], [AM_Opn_Bal], [AM_OB_Cr_Dr], [AM_ABS_Opn_Bal], [AM_Net_04], [AM_Net_05], [AM_Net_06], [AM_Net_07], [AM_Net_08], [AM_Net_09], [AM_Net_10], [AM_Net_11], [AM_Net_12], [AM_Net_01], [AM_Net_02], [AM_Net_03], [AM_LLY_Budg], [AM_LLY_Actu], [AM_LYr_Budg], [AM_LYr_Actu], [AM_Cyr_Budg], [AM_Ent_By], [AM_Ent_Dt], [AM_Upd_By], [AM_Upd_Dt]) VALUES (N'2015', N'100  ', N'JR', N'01 ', N'00', N'A00005', N'DEBIT ACCOUNT -BANK                               ', N'BANK', 0.0000, N'DR', 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1900.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N'1    ', CAST(0x0000A58D0149B597 AS DateTime), NULL, NULL)
INSERT [dbo].[JR_Accounts] ([AM_Fin_Yr], [AM_Inst_Cd], [AM_Inst_Typ], [AM_Brn_Cd], [AM_Lgr_Cd], [AM_Acc_Cd], [AM_Acc_Nm], [AM_Calls], [AM_Opn_Bal], [AM_OB_Cr_Dr], [AM_ABS_Opn_Bal], [AM_Net_04], [AM_Net_05], [AM_Net_06], [AM_Net_07], [AM_Net_08], [AM_Net_09], [AM_Net_10], [AM_Net_11], [AM_Net_12], [AM_Net_01], [AM_Net_02], [AM_Net_03], [AM_LLY_Budg], [AM_LLY_Actu], [AM_LYr_Budg], [AM_LYr_Actu], [AM_Cyr_Budg], [AM_Ent_By], [AM_Ent_Dt], [AM_Upd_By], [AM_Upd_Dt]) VALUES (N'2015', N'100  ', N'JR', N'01 ', N'00', N'A00006', N'OPENING BALANCE VERIFICATION                      ', NULL, -20000.0000, N'CR', 20000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, 20.0000, 20.0000, 20.0000, 20.0000, 20.0000, N'1    ', CAST(0x0000A58C00006CFC AS DateTime), NULL, NULL)*/


/****** Object:  Trigger [UpdateNetAmount]    Script Date: 01/16/2016 14:31:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[UpdateNetAmount]'))
EXEC dbo.sp_executesql @statement = N'CREATE trigger [dbo].[UpdateNetAmount] on [dbo].[JR_Ledger]
for Insert
as

select * into #tempInserted from inserted


declare @instType as varchar(10)
set @instType=(select top 1 lgr_Inst_Typ from inserted)

declare @voucherDate as date
set @voucherDate=(select top 1 Lgr_Vch_Dt from inserted)
declare @vchDateMonth as varchar(2)
set @vchDateMonth=Convert(varchar(2),DatePart(mm,@voucherDate))

declare @paddedString as varchar(2)
set @paddedString=right(''0''+ rtrim(@vchDateMonth), 2)

If @voucherDate is not null
Begin

declare @strQuery as nvarchar(max)

set @strQuery=

''update ''+@instType+''_Accounts 
set AM_Net_''+@paddedString+''=ISNULL(AM_Net_''+@paddedString+'',0)+LG.Lgr_Amt 
FROM ''+@instType+''_Accounts AM
INNER JOIN #tempInserted LG
ON AM.AM_Acc_Cd=LG.Lgr_Acc_Cd''

exec(@strQuery)

drop table #tempInserted

END
'
GO


ALTER trigger [dbo].[UpdateNetAmount_JR] on [dbo].[JR_Ledger]
for Insert
as

select * into #tempInserted from inserted


declare @instType as varchar(10)
set @instType=(select top 1 lgr_Inst_Typ from inserted)

declare @voucherDate as date
set @voucherDate=(select top 1 Lgr_Vch_Dt from inserted)
declare @vchDateMonth as varchar(2)
set @vchDateMonth=Convert(varchar(2),DatePart(mm,@voucherDate))

declare @paddedString as varchar(2)
set @paddedString=right('0'+ rtrim(@vchDateMonth), 2)

If @voucherDate is not null
Begin

declare @strQuery as nvarchar(max)

set @strQuery=

'update '+@instType+'_Accounts 
set AM_Net_'+@paddedString+'=ISNULL(AM_Net_'+@paddedString+',0)+LG.Lgr_Amt 
FROM '+@instType+'_Accounts AM
INNER JOIN #tempInserted LG
ON AM.AM_Acc_Cd=LG.Lgr_Acc_Cd'

exec(@strQuery)

drop table #tempInserted

END
