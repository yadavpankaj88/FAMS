Public Class frmFillAccCode

    Private Sub frmFillAccCode_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim dt As New DataTable
        Dim ldgAccHelper As New LedgerAccountHelper
        Dim ledgerAccMngr As New frmLedgerAccountManage
        Dim str As String = ledgerAccMngr.val
        '  dt = ldgAccHelper.FillAccountCode(str)

    End Sub
End Class