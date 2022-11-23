VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Simple calculator using control array"
   ClientHeight    =   7590
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   16170
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   18
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   7590
   ScaleWidth      =   16170
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCalc 
      Caption         =   "MOD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   5
      Left            =   7560
      TabIndex        =   10
      Top             =   4320
      Width           =   2415
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "\"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   4
      Left            =   6360
      TabIndex        =   9
      Top             =   4320
      Width           =   855
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   3
      Left            =   5160
      TabIndex        =   8
      Top             =   4320
      Width           =   855
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "*"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   2
      Left            =   3600
      TabIndex        =   7
      Top             =   4320
      Width           =   855
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   1
      Left            =   2160
      TabIndex        =   6
      Top             =   4320
      Width           =   855
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   0
      Left            =   720
      TabIndex        =   5
      Top             =   4320
      Width           =   855
   End
   Begin VB.TextBox txtN2 
      Height          =   735
      Left            =   6840
      TabIndex        =   3
      Top             =   1560
      Width           =   3135
   End
   Begin VB.TextBox txtN1 
      Height          =   735
      Left            =   6840
      TabIndex        =   2
      Top             =   360
      Width           =   3135
   End
   Begin VB.Label lblOutput 
      AutoSize        =   -1  'True
      Height          =   435
      Left            =   1920
      TabIndex        =   4
      Top             =   2760
      Width           =   90
   End
   Begin VB.Label Label2 
      Caption         =   "Enter Second Number"
      Height          =   495
      Left            =   1080
      TabIndex        =   1
      Top             =   1680
      Width           =   3855
   End
   Begin VB.Label Label1 
      Caption         =   "Enter First Number"
      Height          =   495
      Left            =   1200
      TabIndex        =   0
      Top             =   600
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim n1 As Integer, n2 As Integer, result As Double
Private Sub cmdCalc_Click(Index As Integer)
n1 = Val(txtN1)
n2 = Val(txtN2)
If Index = 0 Then
    result = n1 + n2
ElseIf Index = 1 Then
    result = n1 - n2
ElseIf Index = 2 Then
    result = n1 * n2
ElseIf Index = 3 Then
    result = n1 / n2
ElseIf Index = 4 Then
    result = n1 \ n2
Else
    result = n1 Mod n2
End If
lblOutput = n1 & cmdCalc(Index).Caption & n2 & " = " & result
End Sub

Private Sub Form_Load()

End Sub
