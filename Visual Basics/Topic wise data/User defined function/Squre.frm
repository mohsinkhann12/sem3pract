VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Square of  number using user defined Function"
   ClientHeight    =   4815
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11865
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   18
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form3"
   ScaleHeight     =   4815
   ScaleWidth      =   11865
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      Height          =   735
      Left            =   3480
      TabIndex        =   3
      Top             =   3000
      Width           =   3615
   End
   Begin VB.TextBox Text1 
      Height          =   855
      Left            =   5040
      TabIndex        =   2
      Top             =   360
      Width           =   4335
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Height          =   435
      Left            =   2160
      TabIndex        =   1
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label Label1 
      Caption         =   "Enter Number"
      Height          =   615
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   3255
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim n As Integer, S As Double
n = Val(Text1)
S = Square(n)
Label2 = "Square is " & S
End Sub

Private Function Square(n As Integer) As Double
S = n * n
Square = S
End Function

