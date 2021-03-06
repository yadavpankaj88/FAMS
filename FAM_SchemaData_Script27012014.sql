USE [master]
GO
/****** Object:  Database [FAM]    Script Date: 01/27/2015 11:51:47 ******/
CREATE DATABASE [FAM] ON  PRIMARY 
( NAME = N'FAM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.BATTLEFIELD08R2\MSSQL\DATA\FAM.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FAM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.BATTLEFIELD08R2\MSSQL\DATA\FAM_1.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'FAM', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FAM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FAM] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [FAM] SET ANSI_NULLS OFF
GO
ALTER DATABASE [FAM] SET ANSI_PADDING OFF
GO
ALTER DATABASE [FAM] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [FAM] SET ARITHABORT OFF
GO
ALTER DATABASE [FAM] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [FAM] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [FAM] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [FAM] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [FAM] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [FAM] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [FAM] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [FAM] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [FAM] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [FAM] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [FAM] SET  DISABLE_BROKER
GO
ALTER DATABASE [FAM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [FAM] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [FAM] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [FAM] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [FAM] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [FAM] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [FAM] SET  READ_WRITE
GO
ALTER DATABASE [FAM] SET RECOVERY FULL
GO
ALTER DATABASE [FAM] SET  MULTI_USER
GO
ALTER DATABASE [FAM] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [FAM] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'FAM', N'ON'
GO
USE [FAM]
GO
/****** Object:  Table [dbo].[User_Master]    Script Date: 01/27/2015 11:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Master](
	[Usr_Id] [char](5) NOT NULL,
	[Usr_Mdl_Cd] [char](4) NOT NULL,
	[Usr_Inst_Typ] [char](2) NOT NULL,
	[Usr_Nm] [char](45) NOT NULL,
	[Usr_Role] [char](20) NOT NULL,
	[Usr_Pwd] [char](10) NOT NULL,
	[Usr_Lst_Login] [char](20) NULL,
	[Usr_Lst_Wrk_Stn] [char](15) NULL,
	[Usr_Lckd] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inst_Master]    Script Date: 01/27/2015 11:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inst_Master](
	[Inst_Cd] [char](5) NULL,
	[Inst_Nm] [char](50) NULL,
	[Inst_Typ] [char](2) NULL,
	[Inst_Adr] [char](120) NULL,
	[Inst_Tel] [char](20) NULL,
	[Inst_email] [char](50) NULL,
	[Inst_Fax] [char](20) NULL,
	[Inst_web_adr] [char](500) NULL,
	[Inst_PAN] [char](20) NULL,
	[Inst_STN] [char](20) NULL,
	[Inst_STN_Reg_Dt] [char](10) NULL,
	[Inst_80G_Reg_No] [char](20) NULL,
	[Inst_Prin_Nm] [char](50) NULL,
	[Inst_Prin_Dsgn] [char](50) NULL,
	[Inst_VP_Nm] [char](50) NULL,
	[Inst_Reg_No] [char](10) NULL,
	[Inst_Link_No] [bigint] NULL,
	[Inst_Cls_Yr] [nchar](4) NULL,
	[Inst_SAM_Dt] [char](10) NULL,
	[Inst_FAM_Dt] [char](10) NULL,
	[Inst_Exam_Dt] [char](10) NULL,
	[Inst_PAM_Dt] [char](10) NULL,
	[Inst_LiM_Dt] [char](10) NULL,
	[Inst_Bank_Nm] [char](50) NULL,
	[Inst_Acc_No] [char](20) NULL,
	[Inst_UID_Srl] [char](6) NULL,
	[Inst_Adm_Rct_Srl] [int] NULL,
	[Inst_Exm_Rct_Srl] [int] NULL,
	[Inst_Oth_Rct_Srl] [int] NULL,
	[Inst_Soc_Rct_Srl] [int] NULL,
	[Inst_Mis_Rct_Srl] [int] NULL,
	[Inst_F_Indctr] [char](1) NULL,
	[Inst_SMTP] [char](50) NULL,
	[Inst_User] [char](50) NULL,
	[Inst_Pass] [char](50) NULL,
	[Inst_Mdl_Cd] [char](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Inst_Master] ([Inst_Cd], [Inst_Nm], [Inst_Typ], [Inst_Adr], [Inst_Tel], [Inst_email], [Inst_Fax], [Inst_web_adr], [Inst_PAN], [Inst_STN], [Inst_STN_Reg_Dt], [Inst_80G_Reg_No], [Inst_Prin_Nm], [Inst_Prin_Dsgn], [Inst_VP_Nm], [Inst_Reg_No], [Inst_Link_No], [Inst_Cls_Yr], [Inst_SAM_Dt], [Inst_FAM_Dt], [Inst_Exam_Dt], [Inst_PAM_Dt], [Inst_LiM_Dt], [Inst_Bank_Nm], [Inst_Acc_No], [Inst_UID_Srl], [Inst_Adm_Rct_Srl], [Inst_Exm_Rct_Srl], [Inst_Oth_Rct_Srl], [Inst_Soc_Rct_Srl], [Inst_Mis_Rct_Srl], [Inst_F_Indctr], [Inst_SMTP], [Inst_User], [Inst_Pass], [Inst_Mdl_Cd]) VALUES (N'CG   ', N'Our CG Institution                                ', N'JR', N'Test Addr                                                                                                               ', N'0020                ', N'm@testuniversity.co.in                            ', N'0020                ', N'm.univ.in                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', N'alppj39nnf          ', N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2013', NULL, N'2014/04/01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[CG_Voucher_Header]    Script Date: 01/27/2015 11:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CG_Voucher_Header](
	[VH_Fin_Yr] [char](4) NULL,
	[VH_Inst_Cd] [char](4) NULL,
	[VH_Inst_Typ] [char](2) NULL,
	[VH_Brn_Cd] [char](3) NULL,
	[VH_Lnk_No] [char](12) NULL,
	[VH_Lnk_Dt] [datetime] NULL,
	[VH_Pty_Nm] [char](100) NULL,
	[VH_Dbk_Cd] [char](4) NULL,
	[VH_Trn_Typ] [char](2) NULL,
	[VH_Vch_No] [char](6) NULL,
	[VH_Vch_Dt] [datetime] NULL,
	[VH_Chq_No] [char](6) NULL,
	[VH_Chq_Dt] [datetime] NULL,
	[VH_Clr_Dt] [datetime] NULL,
	[VH_Ref_No] [char](40) NULL,
	[VH_Ref_Dt] [datetime] NULL,
	[VH_Vch_Ref_No] [char](6) NULL,
	[VH_Lgr_Cd] [char](2) NULL,
	[VH_Acc_Cd] [char](6) NULL,
	[VH_Amt] [money] NULL,
	[VH_Cr_Dr] [char](2) NULL,
	[VH_ABS_Amt] [money] NULL,
	[VH_Ent_By] [char](5) NULL,
	[VH_Ent_Dt] [datetime] NULL,
	[VH_Upd_By] [char](5) NULL,
	[VH_Upd_Dt] [datetime] NULL,
	[VH_Conf_By] [char](5) NULL,
	[VH_Conf_Dt] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CG_Voucher_Detail]    Script Date: 01/27/2015 11:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CG_Voucher_Detail](
	[VD_Fin_Yr] [char](4) NULL,
	[VD_Inst_Cd] [char](4) NULL,
	[VD_Inst_Typ] [char](2) NULL,
	[VD_Brn_Cd] [char](3) NULL,
	[VD_Lnk_No] [char](12) NULL,
	[VD_Dbk_Cd] [char](4) NULL,
	[VD_Trn_Typ] [char](2) NULL,
	[VD_Vch_No] [char](6) NULL,
	[VD_Vch_Ref_No] [char](6) NULL,
	[VD_Seq_No] [char](3) NULL,
	[VD_Ref_No] [char](40) NULL,
	[VD_Ref_Dt] [datetime] NULL,
	[VD_Narr] [char](100) NULL,
	[VD_Lgr_Cd] [char](2) NULL,
	[VD_Acc_Cd] [char](6) NULL,
	[VD_Amt] [money] NULL,
	[VD_Cr_Dr] [char](2) NULL,
	[VD_ABS_Amt] [money] NULL,
	[VD_Ent_By] [char](5) NULL,
	[VD_Ent_Dt] [datetime] NULL,
	[VD_Upd_By] [char](5) NULL,
	[VD_Upd_Dt] [datetime] NULL,
	[VD_Conf_By] [char](5) NULL,
	[VD_Conf_Dt] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CG_Daybooks]    Script Date: 01/27/2015 11:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CG_Daybooks](
	[DM_Fin_Yr] [char](4) NULL,
	[DM_Inst_Cd] [char](4) NULL,
	[DM_Inst_Typ] [char](2) NULL,
	[DM_Brn_Cd] [char](3) NULL,
	[DM_Dbk_Cd] [char](4) NULL,
	[DM_Dbk_Nm] [char](50) NULL,
	[DM_Dbk_Typ] [char](1) NULL,
	[DM_Acc_Cd] [char](6) NULL,
	[DM_Bnk_Nm] [char](50) NULL,
	[DM_Bnk_Brn] [char](30) NULL,
	[DM_Bnk_AcNo] [char](16) NULL,
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
	[DM_Ent_By] [char](5) NULL,
	[DM_Ent_Dt] [datetime] NULL,
	[DM_Upd_By] [char](5) NULL,
	[DM_Upd_Dt] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CG_Accounts]    Script Date: 01/27/2015 11:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CG_Accounts](
	[AM_Fin_Yr] [char](4) NULL,
	[AM_Inst_Cd] [char](4) NULL,
	[AM_Inst_Typ] [char](2) NULL,
	[AM_Brn_Cd] [char](3) NULL,
	[AM_Lgr_Cd] [char](2) NULL,
	[AM_Acc_Cd] [char](6) NULL,
	[AM_Acc_Nm] [char](50) NULL,
	[AM_Calls] [char](2) NULL,
	[AM_Opn_Bal] [money] NULL,
	[AM_OB_Cr_Dr] [char](2) NULL,
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
	[AM_Ent_By] [char](5) NULL,
	[AM_Ent_Dt] [datetime] NULL,
	[AM_Upd_By] [char](5) NULL,
	[AM_Upd_Dt] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
