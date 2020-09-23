VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4395
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   4395
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   1680
      TabIndex        =   1
      Top             =   3480
      Width           =   1215
   End
   Begin MSComctlLib.ListView lvwDetails 
      Height          =   2895
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4335
      _ExtentX        =   7646
      _ExtentY        =   5106
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Const LVM_FIRST = &H1000
Private Const LVM_GETSELECTEDCOUNT = (LVM_FIRST + 50)
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long

Private Sub Command1_Click()
    Dim lSelItems As Long
    
    lSelItems = SendMessage(lvwDetails.hwnd, LVM_GETSELECTEDCOUNT, 0, 0)
    MsgBox "You have Selected  " & lSelItems & " item(s)"
End Sub

Private Sub Form_Load()
Dim i
    
    'Add some items in listview
    
    For i = 1 To 25
        lvwDetails.ListItems.Add , , i
    Next i
    
    
End Sub
