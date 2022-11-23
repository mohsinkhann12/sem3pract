VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7785
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   13800
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
   ScaleHeight     =   7785
   ScaleWidth      =   13800
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDelete 
      Cancel          =   -1  'True
      Caption         =   "Delete"
      Height          =   735
      Left            =   9000
      TabIndex        =   14
      Top             =   6720
      Width           =   3975
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "Save"
      Enabled         =   0   'False
      Height          =   735
      Left            =   4320
      TabIndex        =   13
      Top             =   6720
      Width           =   4095
   End
   Begin VB.CommandButton cmdAddNew 
      Caption         =   "Add new record"
      Height          =   735
      Left            =   240
      TabIndex        =   12
      Top             =   6720
      Width           =   3615
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "G:\Sem3_Practical\Visual Basics\VB Manager\College.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   735
      Left            =   2400
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Student"
      Top             =   5400
      Visible         =   0   'False
      Width           =   7455
   End
   Begin VB.CommandButton cmdMoveP 
      Caption         =   "Move Prevous"
      Height          =   855
      Left            =   9960
      TabIndex        =   11
      Top             =   4200
      Width           =   3495
   End
   Begin VB.CommandButton cmdMoveN 
      Caption         =   "Move Next"
      Height          =   855
      Left            =   9960
      TabIndex        =   10
      Top             =   3000
      Width           =   3375
   End
   Begin VB.CommandButton cmdMoveL 
      Caption         =   "Move Last"
      Height          =   735
      Left            =   9960
      TabIndex        =   9
      Top             =   1920
      Width           =   3375
   End
   Begin VB.CommandButton cmdMoveF 
      Caption         =   "Move First"
      Height          =   855
      Left            =   9960
      TabIndex        =   8
      Top             =   480
      Width           =   3495
   End
   Begin VB.TextBox Text4 
      DataField       =   "M2"
      DataSource      =   "Data1"
      Height          =   855
      Left            =   4200
      TabIndex        =   7
      Text            =   "Text4"
      Top             =   4200
      Width           =   4095
   End
   Begin VB.TextBox Text3 
      DataField       =   "M1"
      DataSource      =   "Data1"
      Height          =   735
      Left            =   3960
      TabIndex        =   6
      Text            =   "Text3"
      Top             =   2760
      Width           =   4215
   End
   Begin VB.TextBox Text2 
      DataField       =   "Name"
      DataSource      =   "Data1"
      Height          =   855
      Left            =   4080
      TabIndex        =   5
      Text            =   "Text2"
      Top             =   1560
      Width           =   4455
   End
   Begin VB.TextBox Text1 
      DataField       =   "Roll_No"
      DataSource      =   "Data1"
      Height          =   735
      Left            =   4080
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   360
      Width           =   4455
   End
   Begin VB.Label Label4 
      Caption         =   "Name"
      Height          =   735
      Left            =   360
      TabIndex        =   3
      Top             =   1680
      Width           =   3135
   End
   Begin VB.Label Label3 
      Caption         =   "M1"
      Height          =   735
      Left            =   480
      TabIndex        =   2
      Top             =   2880
      Width           =   3135
   End
   Begin VB.Label Label2 
      Caption         =   "M2"
      Height          =   735
      Left            =   480
      TabIndex        =   1
      Top             =   4200
      Width           =   3135
   End
   Begin VB.Label Label1 
      Caption         =   "Roll No"
      Height          =   735
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   3135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdAddNew_Click()
Data1.Recordset.AddNew
Text1.SetFocus
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text1.Text = ""
cmdAddNew.Enabled = False
cmdSave.Enabled = True
End Sub

Private Sub cmdDelete_Click()
Data1.Recordset.Delete
MsgBox "Data deleted Successfully"
Call cmdMoveP_Click
End Sub

Private Sub cmdMoveF_Click()
Data1.Recordset.MoveFirst
End Sub

Private Sub cmdMoveL_Click()
Data1.Recordset.MoveLast
End Sub

Private Sub cmdMoveN_Click()
Data1.Recordset.MoveNext
End Sub

Private Sub cmdMoveP_Click()
Data1.Recordset.MovePrevious
End Sub

Private Sub cmdSave_Click()
Data1.Recordset.Update
MsgBox "Record saved successfully"
cmdAddNew.Enabled = True
cmdSave.Enabled = False
End Sub

