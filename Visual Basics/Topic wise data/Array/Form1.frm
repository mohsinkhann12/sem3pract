VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5925
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12000
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
   ScaleHeight     =   5925
   ScaleWidth      =   12000
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdLinerarSearch 
      Caption         =   "Search element"
      Height          =   975
      Left            =   9120
      TabIndex        =   2
      Top             =   2640
      Width           =   2295
   End
   Begin VB.CommandButton cmdInputData 
      Caption         =   "Input data"
      Height          =   855
      Index           =   1
      Left            =   9120
      TabIndex        =   1
      Top             =   120
      Width           =   2175
   End
   Begin VB.CommandButton cmdDisplayData 
      Caption         =   "DIsplay data"
      Height          =   855
      Index           =   0
      Left            =   9120
      TabIndex        =   0
      Top             =   1320
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim num(10) As Integer
Dim i As Integer

Private Sub cmdDisplayData_Click(Index As Integer)
Print "Entered data"
For i = 1 To 10
    Print num(i)
Next
End Sub

Private Sub cmdInputData_Click(Index As Integer)
For i = 1 To 10
    num(i) = InputBox("Entered number")
Next
End Sub

Private Sub cmdMaxMin_Click()
Dim max As Integer, min As Integer
max = num(1)
min = num(1)
For i = 2 To 10
    If num(i) > max Then max = num(i)
    If num(i) < min Then min = num(i)
Next
Print "Maximum value is " & max
Print "Minumum Value is " & min
End Sub

Private Sub cmdLinerarSearch_Click()
Dim flag As Boolean
Dim search As Integer
flag = False
search = InputBox("Enter element to be searched")
For i = 1 To 10
    If num(i) = search Then
    flag = True
    Exit For
    End If
Next
If flag = True Then
    Print search & " Found"
Else
    Print search & " is not found"
End If

End Sub

