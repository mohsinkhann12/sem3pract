VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7155
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14235
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
   ScaleHeight     =   7155
   ScaleWidth      =   14235
   StartUpPosition =   3  'Windows Default
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\Program Files (x86)\Microsoft Visual Studio\VB98\NWIND.MDB"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   975
      Left            =   3120
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Customers"
      Top             =   5760
      Width           =   4815
   End
   Begin VB.CommandButton cmdMovePrevous 
      Caption         =   "Move Prevous"
      Height          =   855
      Left            =   9240
      TabIndex        =   9
      Top             =   4200
      Width           =   3615
   End
   Begin VB.CommandButton cmdMoveNext 
      Caption         =   "Move Next"
      Height          =   735
      Left            =   9240
      TabIndex        =   8
      Top             =   3000
      Width           =   3615
   End
   Begin VB.CommandButton cmdMoveL 
      Caption         =   "Move Last"
      Height          =   735
      Left            =   9360
      TabIndex        =   7
      Top             =   1800
      Width           =   3495
   End
   Begin VB.CommandButton cmdMoveF 
      Cancel          =   -1  'True
      Caption         =   "Move First"
      Height          =   855
      Left            =   9240
      TabIndex        =   6
      Top             =   360
      Width           =   3615
   End
   Begin VB.TextBox Text3 
      DataField       =   "Address"
      DataSource      =   "Data1"
      Height          =   855
      Left            =   3720
      TabIndex        =   5
      Top             =   2760
      Width           =   3135
   End
   Begin VB.TextBox Text2 
      DataField       =   "CompanyName"
      DataSource      =   "Data1"
      Height          =   735
      Left            =   3720
      TabIndex        =   3
      Top             =   1440
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      DataField       =   "ContactName"
      DataSource      =   "Data1"
      Height          =   855
      Left            =   3840
      TabIndex        =   2
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label Label3 
      Caption         =   "M1"
      Height          =   735
      Left            =   240
      TabIndex        =   4
      Top             =   2760
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "Name"
      Height          =   735
      Left            =   120
      TabIndex        =   1
      Top             =   1440
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Roll No"
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdMoveF_Click()
Data1.Recordset.MoveFirst
End Sub

Private Sub cmdMoveL_Click()
Data1.Recordset.MoveLast
End Sub

Private Sub cmdMoveNext_Click()
Data1.Recordset.MoveNext

End Sub

Private Sub cmdMovePrevous_Click()
Data1.Recordset.MovePrevious

End Sub
