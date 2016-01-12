<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmSelectDaybook
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
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.btncontinue = New System.Windows.Forms.Button()
        Me.dtpfromdate = New System.Windows.Forms.DateTimePicker()
        Me.dtptodate = New System.Windows.Forms.DateTimePicker()
        Me.ddldaybookcode = New System.Windows.Forms.ComboBox()
        Me.btnCancel = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(21, 28)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(84, 14)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Daybook Code"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(21, 67)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(34, 14)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "From"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(21, 112)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(19, 14)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "To"
        '
        'btncontinue
        '
        Me.btncontinue.Location = New System.Drawing.Point(101, 165)
        Me.btncontinue.Name = "btncontinue"
        Me.btncontinue.Size = New System.Drawing.Size(75, 25)
        Me.btncontinue.TabIndex = 3
        Me.btncontinue.Text = "View"
        Me.btncontinue.UseVisualStyleBackColor = True
        '
        'dtpfromdate
        '
        Me.dtpfromdate.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.dtpfromdate.Location = New System.Drawing.Point(117, 67)
        Me.dtpfromdate.Name = "dtpfromdate"
        Me.dtpfromdate.Size = New System.Drawing.Size(137, 22)
        Me.dtpfromdate.TabIndex = 5
        '
        'dtptodate
        '
        Me.dtptodate.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.dtptodate.Location = New System.Drawing.Point(117, 106)
        Me.dtptodate.Name = "dtptodate"
        Me.dtptodate.Size = New System.Drawing.Size(137, 22)
        Me.dtptodate.TabIndex = 6
        '
        'ddldaybookcode
        '
        Me.ddldaybookcode.FormattingEnabled = True
        Me.ddldaybookcode.Location = New System.Drawing.Point(117, 23)
        Me.ddldaybookcode.Name = "ddldaybookcode"
        Me.ddldaybookcode.Size = New System.Drawing.Size(137, 22)
        Me.ddldaybookcode.TabIndex = 3
        '
        'btnCancel
        '
        Me.btnCancel.Font = New System.Drawing.Font("Calibri", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnCancel.Location = New System.Drawing.Point(182, 165)
        Me.btnCancel.Name = "btnCancel"
        Me.btnCancel.Size = New System.Drawing.Size(72, 25)
        Me.btnCancel.TabIndex = 7
        Me.btnCancel.Text = "Cancel"
        Me.btnCancel.UseVisualStyleBackColor = True
        '
        'frmSelectDaybook
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 14.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(281, 209)
        Me.ControlBox = False
        Me.Controls.Add(Me.btnCancel)
        Me.Controls.Add(Me.ddldaybookcode)
        Me.Controls.Add(Me.dtptodate)
        Me.Controls.Add(Me.dtpfromdate)
        Me.Controls.Add(Me.btncontinue)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Font = New System.Drawing.Font("Calibri", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmSelectDaybook"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Cash Bank Book"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents btncontinue As System.Windows.Forms.Button
    Friend WithEvents dtpfromdate As System.Windows.Forms.DateTimePicker
    Friend WithEvents dtptodate As System.Windows.Forms.DateTimePicker
    Friend WithEvents ddldaybookcode As System.Windows.Forms.ComboBox
    Private WithEvents btnCancel As System.Windows.Forms.Button
End Class
