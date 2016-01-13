﻿Imports System.Data.SqlClient
Imports System.Text

Public Class LedgerHelper
    Dim Query As String

    Dim dataHelp As DataHelper = New DataHelper()

    Public Sub AddLedger(ByVal VoucherLinkNo As String)

        Dim detailSaveQuery = "INSERT INTO " + InstitutionMasterData.XInstType + "_Ledger([Lgr_Fin_Yr],[Lgr_Seq_No],[Lgr_Inst_Cd],[Lgr_Inst_Typ],[Lgr_Brn_Cd ],[Lgr_Lnk_No],[Lgr_Lnk_Dt],[Lgr_Dbk_Cd],[Lgr_Trn_Typ],[Lgr_Vch_No],[Lgr_Vch_Dt],[Lgr_Vch_Ref_No],[Lgr_Narr],[Lgr_Chq_No],[Lgr_Chq_Dt],[Lgr_Ref_No],[Lgr_Ref_Dt],[Lgr_Acc_Cd],[Lgr_Amt],[Lgr_Cr_Dr],[Lgr_ABS_Amt],[Lgr_Ent_By],[Lgr_Ent_Dt],[Lgr_Upd_By],[Lgr_Upd_Dt],[Lgr_Conf_By],[Lgr_Conf_Dt])" + _
            " SELECT VH_Fin_Yr,'000',VH_Inst_Cd,VH_Inst_Typ,VH_Brn_Cd,VH_Lnk_No,VH_Lnk_Dt,VH_Dbk_Cd,VH_Trn_Typ,VH_Vch_No,VH_Vch_Dt,VH_Vch_Ref_No,VH_Pty_Nm,VH_Chq_No,VH_Chq_Dt,VH_Ref_No,VH_Ref_Dt,VH_Acc_Cd,VH_Amt,VH_Cr_Dr,VH_ABS_Amt,'" + InstitutionMasterData.XUsrId + "',GETDATE(),'" + InstitutionMasterData.XUsrId + "',GETDATE(),'" + InstitutionMasterData.XUsrId + "',GETDATE() from dbo." + InstitutionMasterData.XInstType + "_Voucher_Header where VH_Lnk_No='" + VoucherLinkNo + "'"
        dataHelp.ExecuteNonQuery(detailSaveQuery, CommandType.Text)

    End Sub
    Public Sub AddLedgerDetail(ByVal VoucherLinkNo As String)

        Dim query As String = String.Empty
        query = "SELECT VH_vch_Dt,VH_lnk_Dt FROM " + InstitutionMasterData.XInstType + "_Voucher_Header where VH_Lnk_No='" + VoucherLinkNo + "'"
        Dim dt As DataTable = New DataTable()
        Dim dHelper As DataHelper = New DataHelper()
        dt = dHelper.ExecuteQuery(query, CommandType.Text, Nothing)

        Dim VH_vch_Dt As String = String.Empty
        Dim VH_lnk_Dt As String = String.Empty
        If (dt.Rows.Count > 0) Then
            VH_vch_Dt = dt.Rows(0)(0).ToString()
            VH_lnk_Dt = dt.Rows(0)(1).ToString()
        End If

        Dim saveQuery = "INSERT INTO " + InstitutionMasterData.XInstType + "_Ledger([Lgr_vch_dt],[Lgr_lnk_dt],[Lgr_Fin_Yr],[Lgr_Seq_No],[Lgr_Inst_Cd],[Lgr_Inst_Typ],[Lgr_Brn_Cd ],[Lgr_Lnk_No],[Lgr_Dbk_Cd],[Lgr_Trn_Typ],[Lgr_Vch_No],[Lgr_Vch_Ref_No],[Lgr_Narr],[Lgr_Ref_No],[Lgr_Ref_Dt],[Lgr_Acc_Cd],[Lgr_Amt],[Lgr_Cr_Dr],[Lgr_ABS_Amt],[Lgr_Ent_By],[Lgr_Ent_Dt],[Lgr_Upd_By],[Lgr_Upd_Dt],[Lgr_Conf_By],[Lgr_Conf_Dt])" + _
           " SELECT '" + VH_vch_Dt + "','" + VH_lnk_Dt + "',VD_Fin_Yr,VD_Seq_No,VD_Inst_Cd,VD_Inst_Typ,VD_Brn_Cd,VD_Lnk_No,VD_Dbk_Cd,VD_Trn_Typ ,VD_Vch_No ,VD_Vch_Ref_No ,VD_Narr,VD_Ref_No,VD_Ref_Dt,VD_Acc_Cd,VD_Amt,VD_Cr_Dr,VD_ABS_Amt,'" + InstitutionMasterData.XUsrId + "',GETDATE(),'" + InstitutionMasterData.XUsrId + "',GETDATE(),'" + InstitutionMasterData.XUsrId + "',GETDATE() from dbo." + InstitutionMasterData.XInstType + "_Voucher_Detail where VD_Lnk_No='" + VoucherLinkNo + "'"

        dataHelp.ExecuteNonQuery(saveQuery, CommandType.Text)
    End Sub

    Function GetCountFromLedger(ByVal link_no As String) As Integer
        Dim query As String
        Dim count As Integer
        Try
            query = String.Format("SELECT count(*) from dbo." + InstitutionMasterData.XInstType + "_Ledger where Lgr_Lnk_No='" + link_no + "'")

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
            query = String.Format("SELECT count(*) from dbo." + InstitutionMasterData.XInstType + "_Voucher_Detail where VD_Lnk_No='" + link_no + "'")

            Int32.TryParse(dataHelp.ExecuteScalar(query, CommandType.Text, Nothing), count)
            Return count
        Catch ex As Exception
            Throw
        End Try

    End Function
End Class
