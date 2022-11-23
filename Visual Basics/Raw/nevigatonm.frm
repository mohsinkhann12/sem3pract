VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "connect form with database using data control"
   ClientHeight    =   7335
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   15075
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
   ScaleHeight     =   7335
   ScaleWidth      =   15075
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdMoveNext 
      Caption         =   "Move Next"
      Height          =   615
      Left            =   9480
      TabIndex        =   9
      Top             =   3960
      Width           =   3135
   End
   Begin VB.CommandButton cmdMoveLast 
      Caption         =   "Move Last"
      Height          =   855
      Left            =   9480
      TabIndex        =   8
      Top             =   2640
      Width           =   3015
   End
   Begin VB.CommandButton cmdMovePrevious 
      Caption         =   "Move Previous"
      Height          =   855
      Left            =   9480
      TabIndex        =   7
      Top             =   1440
      Width           =   3015
   End
   Begin VB.CommandButton cmdMoveFirst 
      Caption         =   "Move First"
      Height          =   735
      Left            =   9480
      TabIndex        =   6
      Top             =   240
      Width           =   3015
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\Program Files\Microsoft Visual Studio\VB98\BIBLIO.MDB"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   735
      Left            =   600
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Publishers"
      Top             =   3840
      Visible         =   0   'False
      Width           =   6015
   End
   Begin VB.TextBox Text3 
      DataField       =   "Address"
      DataSource      =   "Data1"
      Height          =   735
      Left            =   3840
      TabIndex        =   5
      Top             =   2640
      Width           =   3255
   End
   Begin VB.TextBox Text2 
      DataField       =   "Company Name"
      DataSource      =   "Data1"
      Height          =   615
      Left            =   3840
      TabIndex        =   4
      Top             =   1440
      Width           =   3255
   End
   Begin VB.TextBox Text1 
      DataField       =   "Name"
      DataSource      =   "Data1"
      Height          =   735
      Left            =   3840
      TabIndex        =   3
      Top             =   360
      Width           =   3255
   End
   Begin VB.Label Label3 
      Caption         =   "Address"
      Height          =   495
      Left            =   480
      TabIndex        =   2
      Top             =   2760
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "Company Name"
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   1560
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "Name"
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   2655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdMoveFirst_Click()
Data1.Recordset.MoveFirst
End Sub
Private Sub cmdMoveLast_Click()
Data1.Recordset.MoveLast
End Sub
Private Sub cmdMoveNext_Click()
Data1.Recordset.MoveNext
End Sub
Private Sub cmdMovePrevious_Click()
If Data1.Recordset.BOF = True Then
    MsgBox "You are one the first record"
    Data1.Recordset.MoveFirst
Else
    Data1.Recordset.MovePrevious
End If
End Sub

