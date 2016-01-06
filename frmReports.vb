﻿Public Class frmReports

    Private _mode As String
   

    Private Sub frmReports_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
        Dim frmMain As frmFAMSMain = DirectCast(Me.MdiParent, frmFAMSMain)
        If frmMain IsNot Nothing Then
            frmMain.mainBindingNavigator.BindingSource = Nothing
            frmMain.pnlNavigator.Visible = False
            frmMain.pnlMenu.Visible = True
            frmMain.EnableNavToolBar()
        End If
        'abc()
    End Sub

    Private Sub frmReports_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        Dim frmfammain As frmFAMSMain = DirectCast(ActiveForm, frmFAMSMain)
        'frmfammain.Show()
    End Sub

    Private Sub frmReports_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        LoadReport()
    End Sub

    Private Sub LoadReport()

        Try
            'ClearControls()
            Select Case _mode
                Case "CashBook"
                    ShowCashBookReport()
                Case "BankBook"
                    ShowBankBookReport()
                Case "GeneralLedger"
                    ShowGeneralLedger()
                Case "TrialBalance"
                    ShowTrialBalance()
            End Select
        Catch ex As Exception
            MessageBox.Show("Error Occurred !!!")
        End Try
    End Sub

    Public Sub SetControls(ByVal pMode As String)
        _mode = pMode
    End Sub

    Private Sub ShowCashBookReport()
        Dim view As New rptCashBook
        Dim user As String = "sa"
        Dim pwd As String = "Password@123"

        view.SetDatabaseLogon(user, pwd)
        'view.SetParameterValue("p_1", Form5.no_faktur_tb_immanuel)
        crystalRptVwr.ReportSource = view
    End Sub

    Private Sub ShowBankBookReport()
        Dim view As New rptBankBook
        Dim user As String = "sa"
        Dim pwd As String = "Password@123"

        view.SetDatabaseLogon(user, pwd)
        'view.SetParameterValue("p_1", Form5.no_faktur_tb_immanuel)
        crystalRptVwr.ReportSource = view
    End Sub

    Private Sub ShowGeneralLedger()
        Dim view As New rptGeneralLedger
        Dim user As String = "sa"
        Dim pwd As String = "Password@123"

        view.SetDatabaseLogon(user, pwd)
        'view.SetParameterValue("p_1", Form5.no_faktur_tb_immanuel)
        crystalRptVwr.ReportSource = view
    End Sub

    Private Sub ShowTrialBalance()
        Dim view As New rptTrialBalance
        Dim user As String = "sa"
        Dim pwd As String = "Password@123"

        view.SetDatabaseLogon(user, pwd)
        'view.SetParameterValue("p_1", Form5.no_faktur_tb_immanuel)
        crystalRptVwr.ReportSource = view
    End Sub

End Class