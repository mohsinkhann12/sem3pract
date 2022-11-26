VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   5070
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11955
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   18
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   ScaleHeight     =   5070
   ScaleWidth      =   11955
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Click to add"
      Height          =   855
      Left            =   2280
      TabIndex        =   5
      Top             =   3720
      Width           =   2655
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   3840
      TabIndex        =   3
      Top             =   1320
      Width           =   3015
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   3840
      TabIndex        =   2
      Top             =   240
      Width           =   3015
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Height          =   435
      Left            =   1200
      TabIndex        =   4
      Top             =   2520
      Width           =   90
   End
   Begin VB.Label Label2 
      Caption         =   "Enter b"
      Height          =   735
      Left            =   360
      TabIndex        =   1
      Top             =   1320
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Enter a"
      Height          =   615
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   2895
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As Integer, b As Integer, c As Integer
a = Val(Text1)
b = Val(Text2)
c = Addition(a, b)
Label3 = "Addition is " & c
End Sub
Private Function Addition(a1 As Integer, b1 As Integer)
Dim c As Integer
c = a1 + b1
Addition = c
End Function

