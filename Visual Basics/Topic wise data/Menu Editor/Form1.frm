VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7590
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   16560
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   24
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   7590
   ScaleWidth      =   16560
   StartUpPosition =   3  'Windows Default
   Begin VB.Label lblOutput 
      AutoSize        =   -1  'True
      Caption         =   "Mohsin Khan"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   72
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1635
      Left            =   2520
      TabIndex        =   0
      Top             =   1440
      Width           =   7875
   End
   Begin VB.Menu mnuFontSize 
      Caption         =   "Font Size"
      Begin VB.Menu mnu12 
         Caption         =   "12"
      End
      Begin VB.Menu mnu14 
         Caption         =   "14"
      End
      Begin VB.Menu mnu16 
         Caption         =   "16"
      End
      Begin VB.Menu mnu18 
         Caption         =   "18"
      End
      Begin VB.Menu mnu24 
         Caption         =   "24"
      End
      Begin VB.Menu mnu48 
         Caption         =   "48"
      End
      Begin VB.Menu mnu72 
         Caption         =   "72"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnu100 
         Caption         =   "100"
      End
      Begin VB.Menu mnuSep 
         Caption         =   "-"
      End
      Begin VB.Menu mnuTNR 
         Caption         =   "Times new Roman"
      End
      Begin VB.Menu mnuAr 
         Caption         =   "Arial"
      End
      Begin VB.Menu mnuSepR 
         Caption         =   "-"
      End
      Begin VB.Menu mnuShortMenu 
         Caption         =   "Short Menu"
      End
   End
   Begin VB.Menu mnuColor 
      Caption         =   "Color"
      Begin VB.Menu mnuBackColor 
         Caption         =   "Back Color"
         Begin VB.Menu mnuBRed 
            Caption         =   "Red"
         End
         Begin VB.Menu mnuBGreen 
            Caption         =   "Green"
         End
         Begin VB.Menu mnuBBlue 
            Caption         =   "Blue"
         End
         Begin VB.Menu mnuBBlack 
            Caption         =   "Black"
         End
         Begin VB.Menu mnuBWhite 
            Caption         =   "White"
         End
      End
      Begin VB.Menu mnuForeColor 
         Caption         =   "Fore Color"
         Begin VB.Menu mnuFRed 
            Caption         =   "Red"
         End
         Begin VB.Menu mnuFGreen 
            Caption         =   "Green"
         End
         Begin VB.Menu mnuFBlue 
            Caption         =   "Blue"
         End
         Begin VB.Menu mnuFWhite 
            Caption         =   "White"
         End
         Begin VB.Menu mnuFBlack 
            Caption         =   "Black"
         End
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label1_Click()

End Sub

Private Sub Form_Load()

End Sub

Private Sub mnu100_Click()
lblOutput.FontSize = "100"
End Sub

Private Sub mnu12_Click()
lblOutput.FontSize = "12"
mnu12.Checked = True
mnu14.Checked = False
mnu16.Checked = False
mnu18.Checked = False
mnu24.Checked = False
mnu48.Checked = False
mnu72.Checked = False
End Sub

Private Sub mnu14_Click()
lblOutput.FontSize = 14
mnu14.Checked = True
mnu12.Checked = False
mnu16.Checked = False
mnu18.Checked = False
mnu24.Checked = False
mnu48.Checked = False
mnu72.Checked = False
End Sub

Private Sub mnu16_Click()
lblOutput.FontSize = "16"
mnu14.Checked = False
mnu16.Checked = True
mnu12.Checked = False
mnu18.Checked = False
mnu24.Checked = False
mnu48.Checked = False
mnu72.Checked = False
End Sub

Private Sub mnu18_Click()
lblOutput.FontSize = "18"
mnu14.Checked = False
mnu16.Checked = False
mnu18.Checked = True
mnu12.Checked = False
mnu24.Checked = False
mnu48.Checked = False
mnu72.Checked = False
End Sub

Private Sub mnu24_Click()
lblOutput.FontSize = "24"
mnu14.Checked = False
mnu16.Checked = False
mnu18.Checked = False
mnu12.Checked = False
mnu24.Checked = True
mnu48.Checked = False
mnu72.Checked = False
End Sub

Private Sub mnu48_Click()
lblOutput.FontSize = "48"
mnu14.Checked = False
mnu16.Checked = False
mnu18.Checked = False
mnu12.Checked = False
mnu24.Checked = False
mnu48.Checked = True
mnu72.Checked = False
End Sub

Private Sub mnu72_Click()
lblOutput.FontSize = "72"
mnu14.Checked = False
mnu16.Checked = False
mnu18.Checked = False
mnu24.Checked = False
mnu12.Checked = False
mnu48.Checked = False
mnu72.Checked = True
End Sub

Private Sub mnuAr_Click()
lblOutput.Font = "Arial Black"
End Sub

Private Sub mnuBlue_Click()

End Sub

Private Sub mnuRed_Click()

End Sub

Private Sub mnuYellow_Click()

End Sub

Private Sub mnuFont_Click()

End Sub

Private Sub mnuBackColor_Click()

End Sub

Private Sub mnuBBlack_Click()
lblOutput.BackColor = vbBlack
End Sub

Private Sub mnuBBlue_Click()
lblOutput.BackColor = vbBlue
End Sub

Private Sub mnuBGreen_Click()
lblOutput.BackColor = vbGreen
End Sub

Private Sub mnuBRed_Click()
lblOutput.BackColor = vbRed
End Sub

Private Sub mnuBWhite_Click()
lblOutput.BackColor = vbWhite
End Sub

Private Sub mnuFBlack_Click()
lblOutput.ForeColor = vbBlack
End Sub

Private Sub mnuFBlue_Click()
lblOutput.ForeColor = vbBlue
End Sub

Private Sub mnuFGreen_Click()
lblOutput.ForeColor = vbGreen
End Sub

Private Sub mnuFRed_Click()
lblOutput.ForeColor = vbRed
End Sub

Private Sub mnuFWhite_Click()
lblOutput.ForeColor = vbWhite
End Sub

Private Sub mnuShortMenu_Click()
If mnuShortMenu.Caption = "Short Menu" Then
mnu14.Visible = False
mnu16.Visible = False
mnu18.Visible = False
mnu24.Visible = False
mnuShortMenu.Caption = "Long Menu"
Else
    mnu14.Visible = True
    mnu16.Visible = True
    mnu18.Visible = True
    mnu24.Visible = True
    mnuShortMenu.Caption = "Short Menu"
End If
End Sub

Private Sub mnuTNR_Click()
lblOutput.Font = "Times New Roman"
End Sub
