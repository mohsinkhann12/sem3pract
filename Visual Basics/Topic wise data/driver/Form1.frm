VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   ClientHeight    =   7590
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14730
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   13.5
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   7590
   ScaleWidth      =   14730
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdMoveN 
      Caption         =   "Move Next"
      Height          =   495
      Left            =   6600
      TabIndex        =   11
      Top             =   2880
      Width           =   2415
   End
   Begin VB.CommandButton cmdMoveP 
      Caption         =   "Move Previous"
      Height          =   495
      Left            =   6600
      TabIndex        =   10
      Top             =   2040
      Width           =   2415
   End
   Begin VB.CommandButton cmdMoveL 
      Caption         =   "Move Last"
      Height          =   615
      Left            =   6600
      TabIndex        =   9
      Top             =   1200
      Width           =   2415
   End
   Begin VB.CommandButton cmdMoveF 
      Caption         =   "Move First"
      Height          =   615
      Left            =   6600
      TabIndex        =   8
      Top             =   240
      Width           =   2295
   End
   Begin VB.TextBox Text4 
      DataField       =   "ContactTitle"
      DataSource      =   "Adodc1"
      Height          =   615
      Left            =   2880
      TabIndex        =   7
      Text            =   "Text4"
      Top             =   2880
      Width           =   2175
   End
   Begin VB.TextBox Text3 
      DataField       =   "ContactName"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   2880
      TabIndex        =   6
      Text            =   "Text3"
      Top             =   1920
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      DataField       =   "CompanyName"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   2880
      TabIndex        =   5
      Text            =   "Text2"
      Top             =   1080
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      DataField       =   "CustomerID"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   2880
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   240
      Width           =   2295
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   735
      Left            =   2640
      Top             =   6600
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   1296
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   3
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "DSN=Data"
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   "Data"
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "Customers"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Label Label4 
      Caption         =   "Company Name"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   1080
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "Contact Name"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   1920
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Contact Title"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   2880
      Width           =   2055
   End
   Begin VB.Label lbl1 
      Caption         =   "Costumer ID"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdMoveF_Click()
Adodc1.Recordset.MoveFirst
End Sub

Private Sub cmdMoveL_Click()
Adodc1.Recordset.MoveLast
End Sub

Private Sub cmdMoveN_Click()
If Adodc1.Recordset.EOF = True Then
    MsgBox "You are on the last record"
    Adodc1.Recordset.MoveLast
Else
    Adodc1.Recordset.MoveNext
End If
End Sub

Private Sub cmdMoveP_Click()
If Adodc1.Recordset.BOF = True Then
    MsgBox "You are on the first record"
    Adodc1.Recordset.MoveFirst
Else
    Adodc1.Recordset.MovePrevious
End If
End Sub

