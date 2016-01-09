Public Class frmSelectDaybook


    Private Sub btncontinue_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncontinue.Click

    End Sub

    Private Sub BindDaybookCode()
        Dim ledgeAccHelper As New LedgerAccountHelper
        Dim ledgerTable As New DataTable()
        ledgerTable = ledgeAccHelper.FillDaybookCode()
        ddldaybookcode.DataSource = ledgerTable
        ddldaybookcode.DisplayMember = "Daybook_Code"
        ddldaybookcode.ValueMember = "DM_Dbk_Cd"

    End Sub

    Private Sub frmSelectDaybook_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        BindDaybookCode()
    End Sub
End Class