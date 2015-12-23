<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAddVoucher
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim DataGridViewCellStyle3 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.LabelVoucherDate = New System.Windows.Forms.Label()
        Me.DatePickerVoucherDate = New System.Windows.Forms.DateTimePicker()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtLinkVoucherNumber = New System.Windows.Forms.TextBox()
        Me.SplitContainer1 = New System.Windows.Forms.SplitContainer()
        Me.txtNextCount = New System.Windows.Forms.TextBox()
        Me.lblDbkNm = New System.Windows.Forms.Label()
        Me.lblDaybookName = New System.Windows.Forms.Label()
        Me.ButtonNext = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.ComboBoxDaybookSelect = New System.Windows.Forms.ComboBox()
        Me.pnlConfirm = New System.Windows.Forms.Panel()
        Me.lblConfirmNumber = New System.Windows.Forms.Label()
        Me.lblConfirmedVoucherNumber = New System.Windows.Forms.Label()
        Me.lblVoucherNo = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.datepickerVoucherConfirm = New System.Windows.Forms.DateTimePicker()
        Me.panelVoucherControls = New System.Windows.Forms.Panel()
        Me.dgvVoucherDetails = New System.Windows.Forms.DataGridView()
        Me.LedgerAccount = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.AccountName = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.hiddenRowNumber = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Amount = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DebitCr = New System.Windows.Forms.DataGridViewComboBoxColumn()
        Me.RefNo = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.RefDate = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.VoucherDesc = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.LabelReferenceNo = New System.Windows.Forms.Label()
        Me.txtRefNumber = New System.Windows.Forms.TextBox()
        Me.LabelReferenceDate = New System.Windows.Forms.Label()
        Me.ComboBoxCreditDebit = New System.Windows.Forms.ComboBox()
        Me.TextBoxAmount = New System.Windows.Forms.TextBox()
        Me.DateTimeReferenceDate = New System.Windows.Forms.DateTimePicker()
        Me.LabelAmount = New System.Windows.Forms.Label()
        Me.LabelNameOfPayee = New System.Windows.Forms.Label()
        Me.TextBoxNameOfPayee = New System.Windows.Forms.TextBox()
        Me.datepickerChequeDate = New System.Windows.Forms.DateTimePicker()
        Me.LabelChequeDate = New System.Windows.Forms.Label()
        Me.LabelChequeNo = New System.Windows.Forms.Label()
        Me.TextBoxChequeNo = New System.Windows.Forms.TextBox()
        Me.LabelNarration = New System.Windows.Forms.Label()
        Me.TextBoxNarration = New System.Windows.Forms.TextBox()

        Me.SplitContainer1.Panel1.SuspendLayout()
        Me.SplitContainer1.Panel2.SuspendLayout()
        Me.SplitContainer1.SuspendLayout()
        Me.pnlConfirm.SuspendLayout()
        Me.panelVoucherControls.SuspendLayout()
        CType(Me.dgvVoucherDetails, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'LabelVoucherDate
        '
        Me.LabelVoucherDate.AutoSize = True
        Me.LabelVoucherDate.Location = New System.Drawing.Point(477, 14)
        Me.LabelVoucherDate.Name = "LabelVoucherDate"
        Me.LabelVoucherDate.Size = New System.Drawing.Size(103, 15)
        Me.LabelVoucherDate.TabIndex = 0
        Me.LabelVoucherDate.Text = "Link voucher date"
        '
        'DatePickerVoucherDate
        '
        Me.DatePickerVoucherDate.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.DatePickerVoucherDate.Location = New System.Drawing.Point(633, 12)
        Me.DatePickerVoucherDate.Name = "DatePickerVoucherDate"
        Me.DatePickerVoucherDate.Size = New System.Drawing.Size(110, 23)
        Me.DatePickerVoucherDate.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(21, 14)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(122, 15)
        Me.Label1.TabIndex = 19
        Me.Label1.Text = "Link Voucher Number"
        '
        'txtLinkVoucherNumber
        '
        Me.txtLinkVoucherNumber.AcceptsReturn = True
        Me.txtLinkVoucherNumber.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtLinkVoucherNumber.Location = New System.Drawing.Point(167, 12)
        Me.txtLinkVoucherNumber.Name = "txtLinkVoucherNumber"
        Me.txtLinkVoucherNumber.Size = New System.Drawing.Size(172, 23)
        Me.txtLinkVoucherNumber.TabIndex = 0
        '
        'SplitContainer1
        '
        Me.SplitContainer1.IsSplitterFixed = True
        Me.SplitContainer1.Location = New System.Drawing.Point(14, 14)
        Me.SplitContainer1.Name = "SplitContainer1"
        Me.SplitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal
        '
        'SplitContainer1.Panel1
        '
        Me.SplitContainer1.Panel1.Controls.Add(Me.txtNextCount)
        Me.SplitContainer1.Panel1.Controls.Add(Me.lblDbkNm)
        Me.SplitContainer1.Panel1.Controls.Add(Me.lblDaybookName)
        Me.SplitContainer1.Panel1.Controls.Add(Me.ButtonNext)
        Me.SplitContainer1.Panel1.Controls.Add(Me.Label2)
        Me.SplitContainer1.Panel1.Controls.Add(Me.ComboBoxDaybookSelect)
        Me.SplitContainer1.Panel1.Font = New System.Drawing.Font("Calibri", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        '
        'SplitContainer1.Panel2
        '
        Me.SplitContainer1.Panel2.Controls.Add(Me.pnlConfirm)
        Me.SplitContainer1.Panel2.Controls.Add(Me.panelVoucherControls)
        Me.SplitContainer1.Panel2.Controls.Add(Me.Label1)
        Me.SplitContainer1.Panel2.Controls.Add(Me.txtLinkVoucherNumber)
        Me.SplitContainer1.Panel2.Controls.Add(Me.DatePickerVoucherDate)
        Me.SplitContainer1.Panel2.Controls.Add(Me.LabelVoucherDate)
        Me.SplitContainer1.Panel2Collapsed = True
        Me.SplitContainer1.Size = New System.Drawing.Size(933, 516)
        Me.SplitContainer1.SplitterWidth = 5
        Me.SplitContainer1.TabIndex = 22
        '
        'txtNextCount
        '
        Me.txtNextCount.Location = New System.Drawing.Point(447, 10)
        Me.txtNextCount.Name = "txtNextCount"
        Me.txtNextCount.Size = New System.Drawing.Size(100, 22)
        Me.txtNextCount.TabIndex = 7
        Me.txtNextCount.Visible = False
        '
        'lblDbkNm
        '
        Me.lblDbkNm.AutoSize = True
        Me.lblDbkNm.Location = New System.Drawing.Point(328, 10)
        Me.lblDbkNm.Name = "lblDbkNm"
        Me.lblDbkNm.Size = New System.Drawing.Size(0, 14)
        Me.lblDbkNm.TabIndex = 6
        Me.lblDbkNm.Visible = False
        '
        'lblDaybookName
        '
        Me.lblDaybookName.AutoSize = True
        Me.lblDaybookName.Location = New System.Drawing.Point(334, 10)
        Me.lblDaybookName.Name = "lblDaybookName"
        Me.lblDaybookName.Size = New System.Drawing.Size(0, 14)
        Me.lblDaybookName.TabIndex = 5
        '
        'ButtonNext
        '
        Me.ButtonNext.Location = New System.Drawing.Point(321, 4)
        Me.ButtonNext.Name = "ButtonNext"
        Me.ButtonNext.Size = New System.Drawing.Size(87, 27)
        Me.ButtonNext.TabIndex = 1
        Me.ButtonNext.Text = "Next"
        Me.ButtonNext.UseVisualStyleBackColor = True
        Me.ButtonNext.Visible = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(21, 10)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(54, 14)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Daybook"
        '
        'ComboBoxDaybookSelect
        '
        Me.ComboBoxDaybookSelect.FormattingEnabled = True
        Me.ComboBoxDaybookSelect.Location = New System.Drawing.Point(166, 7)
        Me.ComboBoxDaybookSelect.Name = "ComboBoxDaybookSelect"
        Me.ComboBoxDaybookSelect.Size = New System.Drawing.Size(140, 22)
        Me.ComboBoxDaybookSelect.TabIndex = 0
        '
        'pnlConfirm
        '
        Me.pnlConfirm.Controls.Add(Me.lblConfirmNumber)
        Me.pnlConfirm.Controls.Add(Me.lblConfirmedVoucherNumber)
        Me.pnlConfirm.Controls.Add(Me.lblVoucherNo)
        Me.pnlConfirm.Controls.Add(Me.Label3)
        Me.pnlConfirm.Controls.Add(Me.datepickerVoucherConfirm)
        Me.pnlConfirm.Location = New System.Drawing.Point(3, 42)
        Me.pnlConfirm.Name = "pnlConfirm"
        Me.pnlConfirm.Size = New System.Drawing.Size(912, 46)
        Me.pnlConfirm.TabIndex = 20
        Me.pnlConfirm.Visible = False
        '
        'lblConfirmNumber
        '
        Me.lblConfirmNumber.AutoSize = True
        Me.lblConfirmNumber.Location = New System.Drawing.Point(161, 20)
        Me.lblConfirmNumber.Name = "lblConfirmNumber"
        Me.lblConfirmNumber.Size = New System.Drawing.Size(43, 15)
        Me.lblConfirmNumber.TabIndex = 23
        Me.lblConfirmNumber.Text = "Label4"
        '
        'lblConfirmedVoucherNumber
        '
        Me.lblConfirmedVoucherNumber.AutoSize = True
        Me.lblConfirmedVoucherNumber.Location = New System.Drawing.Point(238, 20)
        Me.lblConfirmedVoucherNumber.Name = "lblConfirmedVoucherNumber"
        Me.lblConfirmedVoucherNumber.Size = New System.Drawing.Size(0, 15)
        Me.lblConfirmedVoucherNumber.TabIndex = 22
        '
        'lblVoucherNo
        '
        Me.lblVoucherNo.AutoSize = True
        Me.lblVoucherNo.Location = New System.Drawing.Point(21, 20)
        Me.lblVoucherNo.Name = "lblVoucherNo"
        Me.lblVoucherNo.Size = New System.Drawing.Size(119, 15)
        Me.lblVoucherNo.TabIndex = 20
        Me.lblVoucherNo.Text = "Confirmed Voucher #"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(474, 16)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(106, 15)
        Me.Label3.TabIndex = 18
        Me.Label3.Text = "Confirmation Date"
        '
        'datepickerVoucherConfirm
        '
        Me.datepickerVoucherConfirm.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.datepickerVoucherConfirm.Location = New System.Drawing.Point(630, 16)
        Me.datepickerVoucherConfirm.Name = "datepickerVoucherConfirm"
        Me.datepickerVoucherConfirm.Size = New System.Drawing.Size(114, 23)
        Me.datepickerVoucherConfirm.TabIndex = 19
        '
        'panelVoucherControls
        '
        Me.panelVoucherControls.Controls.Add(Me.dgvVoucherDetails)
        Me.panelVoucherControls.Controls.Add(Me.LabelReferenceNo)
        Me.panelVoucherControls.Controls.Add(Me.txtRefNumber)
        Me.panelVoucherControls.Controls.Add(Me.LabelReferenceDate)
        Me.panelVoucherControls.Controls.Add(Me.ComboBoxCreditDebit)
        Me.panelVoucherControls.Controls.Add(Me.TextBoxAmount)
        Me.panelVoucherControls.Controls.Add(Me.DateTimeReferenceDate)
        Me.panelVoucherControls.Controls.Add(Me.LabelAmount)
        Me.panelVoucherControls.Controls.Add(Me.LabelNameOfPayee)
        Me.panelVoucherControls.Controls.Add(Me.TextBoxNameOfPayee)
        Me.panelVoucherControls.Controls.Add(Me.datepickerChequeDate)
        Me.panelVoucherControls.Controls.Add(Me.LabelChequeDate)
        Me.panelVoucherControls.Controls.Add(Me.LabelChequeNo)
        Me.panelVoucherControls.Controls.Add(Me.TextBoxChequeNo)
        'Me.panelVoucherControls.Controls.Add(Me.LabelNarration)
        'Me.panelVoucherControls.Controls.Add(Me.TextBoxNarration)
        Me.panelVoucherControls.Location = New System.Drawing.Point(10, 92)
        Me.panelVoucherControls.Name = "panelVoucherControls"
        Me.panelVoucherControls.Size = New System.Drawing.Size(923, 342)
        Me.panelVoucherControls.TabIndex = 22
        '
        'dgvVoucherDetails
        '
        Me.dgvVoucherDetails.AllowUserToDeleteRows = False
        Me.dgvVoucherDetails.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvVoucherDetails.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.LedgerAccount, Me.AccountName, Me.hiddenRowNumber, Me.Amount, Me.DebitCr, Me.RefNo, Me.RefDate, Me.VoucherDesc})
        Me.dgvVoucherDetails.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.dgvVoucherDetails.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnEnter
        Me.dgvVoucherDetails.Location = New System.Drawing.Point(0, 160)
        Me.dgvVoucherDetails.Name = "dgvVoucherDetails"
        Me.dgvVoucherDetails.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgvVoucherDetails.Size = New System.Drawing.Size(923, 182)
        Me.dgvVoucherDetails.TabIndex = 17
        '
        'LedgerAccount
        '
        Me.LedgerAccount.DataPropertyName = "LedgerAccount"
        Me.LedgerAccount.HeaderText = "G/L Acc"
        Me.LedgerAccount.Name = "LedgerAccount"
        '
        'AccountName
        '
        Me.AccountName.DataPropertyName = "AccountName"
        Me.AccountName.HeaderText = "Account Name"
        Me.AccountName.Name = "AccountName"
        Me.AccountName.ReadOnly = True
        Me.AccountName.Width = 200
        '
        'hiddenRowNumber
        '
        Me.hiddenRowNumber.DataPropertyName = "RowNumber"
        Me.hiddenRowNumber.HeaderText = "RowNumber"
        Me.hiddenRowNumber.Name = "hiddenRowNumber"
        Me.hiddenRowNumber.Visible = False
        '
        'Amount
        '
        Me.Amount.DataPropertyName = "Amount"
        DataGridViewCellStyle3.Format = "N2"
        DataGridViewCellStyle3.NullValue = Nothing
        Me.Amount.DefaultCellStyle = DataGridViewCellStyle3
        Me.Amount.HeaderText = "Amount"
        Me.Amount.Name = "Amount"
        '
        'DebitCr
        '
        Me.DebitCr.DataPropertyName = "CrDr"
        Me.DebitCr.DisplayStyle = System.Windows.Forms.DataGridViewComboBoxDisplayStyle.ComboBox
        Me.DebitCr.HeaderText = ""
        Me.DebitCr.Items.AddRange(New Object() {"Dr", "Cr"})
        Me.DebitCr.Name = "DebitCr"
        Me.DebitCr.Width = 50
        '
        'RefNo
        '
        Me.RefNo.DataPropertyName = "RefNo"
        Me.RefNo.HeaderText = "Reference Number"
        Me.RefNo.Name = "RefNo"
        '
        'RefDate
        '
        Me.RefDate.DataPropertyName = "RefDate"
        Me.RefDate.HeaderText = "Reference Date"
        Me.RefDate.Name = "RefDate"
        '
        'VoucherDesc
        '
        Me.VoucherDesc.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill
        Me.VoucherDesc.DataPropertyName = "VoucherDesc"
        Me.VoucherDesc.HeaderText = "Voucher Description"
        Me.VoucherDesc.Name = "VoucherDesc"
        '
        'LabelReferenceNo
        '
        Me.LabelReferenceNo.AutoSize = True
        Me.LabelReferenceNo.Location = New System.Drawing.Point(10, 22)
        Me.LabelReferenceNo.Name = "LabelReferenceNo"
        Me.LabelReferenceNo.Size = New System.Drawing.Size(78, 15)
        Me.LabelReferenceNo.TabIndex = 10
        Me.LabelReferenceNo.Text = "Reference No"
        '
        'txtRefNumber
        '
        Me.txtRefNumber.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtRefNumber.Location = New System.Drawing.Point(156, 14)
        Me.txtRefNumber.MaxLength = 40
        Me.txtRefNumber.Name = "txtRefNumber"
        Me.txtRefNumber.Size = New System.Drawing.Size(116, 23)
        Me.txtRefNumber.TabIndex = 0
        '
        'LabelReferenceDate
        '
        Me.LabelReferenceDate.AutoSize = True
        Me.LabelReferenceDate.Location = New System.Drawing.Point(467, 22)
        Me.LabelReferenceDate.Name = "LabelReferenceDate"
        Me.LabelReferenceDate.Size = New System.Drawing.Size(88, 15)
        Me.LabelReferenceDate.TabIndex = 12
        Me.LabelReferenceDate.Text = "Reference Date"
        '
        'ComboBoxCreditDebit
        '
        Me.ComboBoxCreditDebit.FormattingEnabled = True
        Me.ComboBoxCreditDebit.Location = New System.Drawing.Point(288, 126)
        Me.ComboBoxCreditDebit.Name = "ComboBoxCreditDebit"
        Me.ComboBoxCreditDebit.Size = New System.Drawing.Size(41, 23)
        Me.ComboBoxCreditDebit.TabIndex = 6
        '
        'TextBoxAmount
        '
        Me.TextBoxAmount.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.TextBoxAmount.Location = New System.Drawing.Point(156, 126)
        Me.TextBoxAmount.Name = "TextBoxAmount"
        Me.TextBoxAmount.Size = New System.Drawing.Size(116, 23)
        Me.TextBoxAmount.TabIndex = 5
        '
        'DateTimeReferenceDate
        '
        Me.DateTimeReferenceDate.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.DateTimeReferenceDate.Location = New System.Drawing.Point(623, 18)
        Me.DateTimeReferenceDate.Name = "DateTimeReferenceDate"
        Me.DateTimeReferenceDate.Size = New System.Drawing.Size(114, 23)
        Me.DateTimeReferenceDate.TabIndex = 1
        '
        'LabelAmount
        '
        Me.LabelAmount.AutoSize = True
        Me.LabelAmount.Location = New System.Drawing.Point(10, 126)
        Me.LabelAmount.Name = "LabelAmount"
        Me.LabelAmount.Size = New System.Drawing.Size(49, 15)
        Me.LabelAmount.TabIndex = 16
        Me.LabelAmount.Text = "Amount"
        '
        'LabelNameOfPayee
        '
        Me.LabelNameOfPayee.AutoSize = True
        Me.LabelNameOfPayee.Location = New System.Drawing.Point(10, 93)
        Me.LabelNameOfPayee.Name = "LabelNameOfPayee"
        Me.LabelNameOfPayee.Size = New System.Drawing.Size(87, 15)
        Me.LabelNameOfPayee.TabIndex = 4
        Me.LabelNameOfPayee.Text = "Name of Payee"
        '
        'TextBoxNameOfPayee
        '
        Me.TextBoxNameOfPayee.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.TextBoxNameOfPayee.Location = New System.Drawing.Point(156, 90)
        Me.TextBoxNameOfPayee.Name = "TextBoxNameOfPayee"
        Me.TextBoxNameOfPayee.Size = New System.Drawing.Size(280, 23)
        Me.TextBoxNameOfPayee.TabIndex = 4
        '
        'datepickerChequeDate
        '
        Me.datepickerChequeDate.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.datepickerChequeDate.Location = New System.Drawing.Point(619, 60)
        Me.datepickerChequeDate.Name = "datepickerChequeDate"
        Me.datepickerChequeDate.Size = New System.Drawing.Size(114, 23)
        Me.datepickerChequeDate.TabIndex = 3
        '
        'LabelChequeDate
        '
        Me.LabelChequeDate.AutoSize = True
        Me.LabelChequeDate.Location = New System.Drawing.Point(467, 60)
        Me.LabelChequeDate.Name = "LabelChequeDate"
        Me.LabelChequeDate.Size = New System.Drawing.Size(74, 15)
        Me.LabelChequeDate.TabIndex = 9
        Me.LabelChequeDate.Text = "Cheque date"
        '
        'LabelChequeNo
        '
        Me.LabelChequeNo.AutoSize = True
        Me.LabelChequeNo.Location = New System.Drawing.Point(10, 57)
        Me.LabelChequeNo.Name = "LabelChequeNo"
        Me.LabelChequeNo.Size = New System.Drawing.Size(64, 15)
        Me.LabelChequeNo.TabIndex = 6
        Me.LabelChequeNo.Text = "Cheque no"
        '
        'TextBoxChequeNo
        '
        Me.TextBoxChequeNo.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.TextBoxChequeNo.Location = New System.Drawing.Point(156, 57)
        Me.TextBoxChequeNo.MaxLength = 6
        Me.TextBoxChequeNo.Name = "TextBoxChequeNo"
        Me.TextBoxChequeNo.Size = New System.Drawing.Size(278, 23)
        Me.TextBoxChequeNo.TabIndex = 2

        'LabelNarration
        '
        Me.LabelNarration.AutoSize = True
        Me.LabelNarration.Location = New System.Drawing.Point(467, 95)
        Me.LabelNarration.Name = "LabelNarration"
        Me.LabelNarration.Size = New System.Drawing.Size(64, 15)
        Me.LabelNarration.TabIndex = 10
        Me.LabelNarration.Text = "Narration"
        '
        'TextBoxNarration
        '
        Me.TextBoxNarration.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.TextBoxNarration.Location = New System.Drawing.Point(619, 95)
        Me.TextBoxNarration.MaxLength = 6
        Me.TextBoxNarration.Name = "TextBoxChequeNo"
        'Me.TextBoxNarration.Size = New System.Drawing.Size(278, 23)
        Me.TextBoxNarration.TabIndex = 10
        Me.TextBoxNarration.Multiline = True
        '
        'frmAddVoucher
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(959, 543)
        Me.Controls.Add(Me.SplitContainer1)
        Me.Font = New System.Drawing.Font("Calibri", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmAddVoucher"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.SplitContainer1.Panel1.ResumeLayout(False)
        Me.SplitContainer1.Panel1.PerformLayout()
        Me.SplitContainer1.Panel2.ResumeLayout(False)
        Me.SplitContainer1.Panel2.PerformLayout()
        Me.SplitContainer1.ResumeLayout(False)
        Me.pnlConfirm.ResumeLayout(False)
        Me.pnlConfirm.PerformLayout()
        Me.panelVoucherControls.ResumeLayout(False)
        Me.panelVoucherControls.PerformLayout()
        CType(Me.dgvVoucherDetails, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents LabelVoucherDate As System.Windows.Forms.Label
    Friend WithEvents DatePickerVoucherDate As System.Windows.Forms.DateTimePicker
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtLinkVoucherNumber As System.Windows.Forms.TextBox
    Friend WithEvents SplitContainer1 As System.Windows.Forms.SplitContainer
    Friend WithEvents panelVoucherControls As System.Windows.Forms.Panel
    Friend WithEvents LabelReferenceNo As System.Windows.Forms.Label
    Friend WithEvents txtRefNumber As System.Windows.Forms.TextBox
    Friend WithEvents LabelReferenceDate As System.Windows.Forms.Label
    Friend WithEvents ComboBoxCreditDebit As System.Windows.Forms.ComboBox
    Friend WithEvents TextBoxAmount As System.Windows.Forms.TextBox
    Friend WithEvents DateTimeReferenceDate As System.Windows.Forms.DateTimePicker
    Friend WithEvents LabelAmount As System.Windows.Forms.Label
    Friend WithEvents LabelNameOfPayee As System.Windows.Forms.Label
    Friend WithEvents TextBoxNameOfPayee As System.Windows.Forms.TextBox
    Friend WithEvents datepickerChequeDate As System.Windows.Forms.DateTimePicker
    Friend WithEvents LabelChequeDate As System.Windows.Forms.Label
    Friend WithEvents LabelChequeNo As System.Windows.Forms.Label
    Friend WithEvents TextBoxChequeNo As System.Windows.Forms.TextBox
    Friend WithEvents ButtonNext As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents ComboBoxDaybookSelect As System.Windows.Forms.ComboBox
    Friend WithEvents dgvVoucherDetails As System.Windows.Forms.DataGridView
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents pnlConfirm As System.Windows.Forms.Panel
    Friend WithEvents datepickerVoucherConfirm As System.Windows.Forms.DateTimePicker
    Friend WithEvents lblVoucherNo As System.Windows.Forms.Label
    Friend WithEvents lblDaybookName As System.Windows.Forms.Label
    Friend WithEvents lblConfirmedVoucherNumber As System.Windows.Forms.Label
    Friend WithEvents lblDbkNm As System.Windows.Forms.Label
    Friend WithEvents txtNextCount As System.Windows.Forms.TextBox
    Friend WithEvents lblConfirmNumber As System.Windows.Forms.Label
    Friend WithEvents LedgerAccount As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents AccountName As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents hiddenRowNumber As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Amount As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DebitCr As System.Windows.Forms.DataGridViewComboBoxColumn
    Friend WithEvents RefNo As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents RefDate As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents VoucherDesc As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents LabelNarration As System.Windows.Forms.Label
    Friend WithEvents TextBoxNarration As System.Windows.Forms.TextBox

End Class
