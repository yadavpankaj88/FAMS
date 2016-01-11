Public Class frmSelectDaybook

    Dim objCashReceipt As frmReports
    Private _mode As String

    Private Sub btncontinue_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncontinue.Click
        ShowReport()
        Me.Hide()
    End Sub

    Private Sub frmReports_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
        Dim frmMain As frmFAMSMain = DirectCast(Me.MdiParent, frmFAMSMain)
        If frmMain IsNot Nothing Then
            frmMain.mainBindingNavigator.BindingSource = Nothing
            frmMain.pnlNavigator.Visible = False
            frmMain.pnlMenu.Visible = True
            frmMain.EnableNavToolBar()
        End If
    End Sub

    Public Sub SetControls(ByVal pMode As String)
        _mode = pMode
    End Sub

    Private Sub ShowReport()
        Try
            objCashReceipt = New frmReports
            objCashReceipt.SetControls(_mode, ddldaybookcode.SelectedValue,dtpfromdate.Value,dtptodate.Value)
            Dim frmMain As frmFAMSMain = DirectCast(Me.MdiParent, frmFAMSMain)
            frmMain.ShowNewForm(objCashReceipt, Nothing)
            'TO-DO: Hide SelectDayBook Form
        Catch ex As Exception
            MessageBox.Show("Error Occurred !!!")
        End Try
    End Sub

    Private Sub BindDaybookCode()
        Dim ledgeAccHelper As New LedgerAccountHelper
        Dim ledgerTable As New DataTable()
        Dim dbkTyp As String

        If (_mode = "CashBook") Then
            dbkTyp = "C"
        Else
            dbkTyp = "B"
        End If
        ledgerTable = ledgeAccHelper.FillDaybookCode(dbkTyp)
        ddldaybookcode.DataSource = ledgerTable
        ddldaybookcode.DisplayMember = "Daybook_Code"
        ddldaybookcode.ValueMember = "DM_Dbk_Cd"
    End Sub

    Private Sub frmSelectDaybook_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        BindDaybookCode()
    End Sub

End Class