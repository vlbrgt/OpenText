#tag Window
Begin Window frmSongBook
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   536
   ImplicitInstance=   True
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Manage PDF Song Books"
   Visible         =   True
   Width           =   300
   Begin GroupBox GroupBox1
      AllowAutoDeactivate=   True
      Bold            =   True
      Caption         =   "Installed Books"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   249
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   22
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   137
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   258
      Begin Listbox songList
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   True
         ColumnCount     =   1
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   1
         GridLinesVerticalStyle=   0
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   False
         HeadingIndex    =   -1
         Height          =   205
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   " "
         Italic          =   False
         Left            =   38
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   161
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   227
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin Label Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   22
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Select an operation, then click on a location.\r\n\r\n"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   258
   End
   Begin GroupBox GroupBox2
      AllowAutoDeactivate=   True
      Bold            =   True
      Caption         =   "Operations"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   85
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   22
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   40
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   258
      BeginSegmented SegmentedControl SegmentedControl1
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Left            =   67
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacControlStyle =   0
         Scope           =   0
         Segments        =   "Create Midis\n\nFalse\rMerge Midis\n\nFalse"
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   "True"
         Top             =   88
         Transparent     =   True
         Visible         =   True
         Width           =   166
      End
      BeginSegmented SegmentedControl SegmentedControl2
         Enabled         =   True
         Height          =   23
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Left            =   67
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacControlStyle =   0
         Scope           =   0
         Segments        =   "Add Book\n\nFalse\rDelete Book\n\nFalse"
         SelectionType   =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   "True"
         Top             =   59
         Transparent     =   True
         Visible         =   True
         Width           =   166
      End
   End
   Begin GroupBox PageBox
      AllowAutoDeactivate=   True
      Bold            =   True
      Caption         =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   120
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   67
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   396
      Transparent     =   True
      Underline       =   False
      Visible         =   False
      Width           =   168
      Begin Label Label2
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   28
         Index           =   -2147483648
         InitialParent   =   "PageBox"
         Italic          =   False
         Left            =   76
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Starting page #"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   417
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   86
      End
      Begin TextField txtStartingNumber
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   23
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "PageBox"
         Italic          =   False
         Left            =   180
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   420
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   45
      End
      Begin Label Label3
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   28
         Index           =   -2147483648
         InitialParent   =   "PageBox"
         Italic          =   False
         Left            =   76
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Ending page # "
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   448
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   86
      End
      Begin TextField txtEndingNumber
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   23
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "PageBox"
         Italic          =   False
         Left            =   180
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   451
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   45
      End
      Begin PushButton pbCreateMidis
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "  Process  "
         Default         =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "PageBox"
         Italic          =   False
         Left            =   110
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   486
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   82
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim name As String
		  Dim key As String
		  Dim delimiter As Integer
		  Dim m As Integer
		  dim f as FolderItem
		  dim stream as TextInputStream
		  dim fileName as string
		  dim allText as String
		  dim lines() as string
		  
		  functionName="Song Book Open"
		  
		  frmSongBook.height=405'350
		  GroupBox1.height=249'286
		  PageBox.Visible=false
		  
		  frmSongBook.songList.columncount=1
		  frmSongBook.songList.Heading(0)="                       PDF Book Title"
		  'frmSongBook.songList.ColumnType(0) = ListBox.TypeEditable
		  
		  'fileName = GetAppFolder.AbsolutePath   +"pdfBooks.dat"
		  'f=GetFolderItem(fileName)
		  f = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("pdfBooks.dat")
		  
		  if f <> Nil and f.exists then
		    stream=f.OpenAsTextFile
		    allText =stream.ReadAll
		    stream.close
		    lines()= Split(allText, EndOfLine)
		    
		    For m = 0 To 11' UBound(lines()) - 1
		      'If lines(m) = "" Then Exit For
		      frmSongBook.SongList. addrow lines(m)
		      frmSongBook.SongList. RowTag(m)= str(m+105)
		    next
		    
		    
		  else 
		    For m = 0 To 11' UBound(lines()) - 1
		      'If lines(m) = "" Then Exit For
		      frmSongBook.SongList. addrow " "
		      frmSongBook.SongList. RowTag(m)= str(m+105)
		    next
		    
		  end if
		  
		  
		  
		  dim s as SegmentedControlItem
		  s = frmSongBook.SegmentedControl1.items(0)
		  s.selected =true
		  s = frmSongBook.SegmentedControl2.items(0)
		  s.selected =false
		  s =frmOpenText.SegmentedControl1.items(1)
		  s.selected =true
		  '
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		    
		    'if s.selected then
		    '// code
		    'else
		    '// more code
		    'end if
		    
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Untitled()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BookName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectedRow As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events songList
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    g.foreColor= RGB(239, 243, 247)
		  else
		    g.foreColor=  RGB(254, 254, 254)
		  end if
		  g.FillRect 0,0,g.width,g.height
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim AddBook as SegmentedControlItem=SegmentedControl2.items(0)' SegmentedControl1.items(0)
		  dim CreateMidis as SegmentedControlItem=SegmentedControl1.items(0)' SegmentedControl1.items(1)
		  dim MergeMidi as SegmentedControlItem= SegmentedControl1.items(1)'SegmentedControl1.items(2)
		  dim DeleteBook as SegmentedControlItem=SegmentedControl2.items(1)
		  functionName="Song List Click"
		  's = SegmentedControl1.items(0)
		  
		  'if s.selected then
		  if AddBook.selected then
		    // code for adding book
		    Dim dialogOpen As New OpenDialog
		    Dim fileType As New FileType
		    dim f, f2,f3, f4 as folderitem
		    dim n as integer
		    Dim i as Integer
		    dim booklist as string
		    
		    frmSongBook.height=405
		    GroupBox1.height=249
		    PageBox.Visible=false
		    f4= SpecialFolder.Documents
		    f2 = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("pdfBooks.dat")
		    f3= SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books")
		    fileType.Name = "pdf"
		    fileType.Extensions = "pdf"
		    'if bookFile= Nil then
		    'dialogOpen.InitialDirectory=f4
		    'else
		    'dialogOpen.InitialDirectory= bookFile
		    'end if
		    
		    dialogOpen.InitialDirectory=SpecialFolder.Documents  ' f2
		    dialogOpen.Title = "Browse and Select a PDF book."
		    dialogOpen.Filter = fileType
		    dialogOpen.ActionButtonCaption = "OK"
		    dialogOpen.MultiSelect = false
		    f=dialogOpen.ShowModal
		    If f <> Nil Then
		      'bookFile=f.parent
		      dialogOpen.item(0).CopyFileTo f3
		      frmSongBook.songList.cell(row, column)=dialogOpen.item(i).Name
		      For n = 0 To 11//save book list 
		        booklist=booklist+ frmSongBook.songList.cell(n, 0)+endofline
		      next
		      writeTextFile(booklist, f2.NativePath)
		    end if
		    
		  end if 
		  if DeleteBook.selected then
		    // code for adding book
		    Dim dialogOpen As New OpenDialog
		    Dim fileType As New FileType
		    dim f2,f3  as folderitem
		    Dim n,i as Integer
		    dim booklist as string
		    
		    frmSongBook.height=405
		    GroupBox1.height=249
		    PageBox.Visible=false
		    
		    if  Instr(lowercase(frmSongBook.songList.cell(row, 0)), ".pdf") >0 then
		      BookName=frmSongBook.songList.cell(row, 0)
		      f3= SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books").Child(BookName)
		      
		      Dim d as New MessageDialog //declare the MessageDialog object
		      Dim b as MessageDialogButton //for handling the result
		      d.icon=MessageDialog.GraphicCaution //display warning icon
		      d.ActionButton.Caption="Delete"
		      d.CancelButton.Visible=True //show the Cancel button
		      d.AlternateActionButton.Visible=false //show the "Don't Save" button
		      d.AlternateActionButton.Caption="Don't Save"
		      d.Message="Do you want to delete this Song Book?"
		      d.Explanation="Do so only if you no longer call pages in this book from your instrument!"
		      
		      b=d.ShowModal //display the dialog
		      Select Case b //determine which button was pressed.
		      Case d.ActionButton
		        f3.delete//user pressed Delete
		        f2 = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("pdfBooks.dat")
		        
		        frmSongBook.songList.cell(row, column)=""
		        For n = 0 To 11//save book list
		          booklist=booklist+ frmSongBook.songList.cell(n, 0)+endofline
		        next
		        writeTextFile(booklist, f2.NativePath)
		        
		      Case d.AlternateActionButton
		        //user pressed 
		      Case d.CancelButton
		        //user pressed Cancel
		      End select
		      
		    end if 'book exists on list
		  end if
		  
		  if CreateMidis.selected then
		    //  code for creating midis 
		    if  Instr(lowercase(frmSongBook.songList.cell(row, 0)), ".pdf") >0 then 
		      BookName=frmSongBook.songList.cell(row, 0)
		      selectedRow=row
		      frmSongBook.height=536'496
		      GroupBox1.height=249' 431
		      PageBox.Visible=true
		      label2.Text="Starting page #"
		      label3.visible= true
		      txtEndingNumber.Visible=true
		    end if 
		  end if 
		  
		  If MergeMidi.selected then
		    if  Instr(lowercase(frmSongBook.songList.cell(row, 0)), ".pdf") >0 then
		      BookName=frmSongBook.songList.cell(row, 0)
		      selectedRow=row
		      frmSongBook.height=536
		      GroupBox1.height=249'431
		      PageBox.Visible=true
		      label2.Text=" Enter page #"
		      label3.visible= false
		      txtEndingNumber.Visible=false
		      
		      
		    end if
		    
		    
		    
		  end if 
		  
		  songList.Selected(row)=false
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		    
		    
		    
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SegmentedControl1
	#tag Event
		Sub Action(itemIndex as integer)
		  
		  dim s as SegmentedControlItem
		  dim n as integer
		  functionName="Song Book Control Action"
		  
		  s = frmSongBook.SegmentedControl2.items(0)
		  s.selected =false
		  s = frmSongBook.SegmentedControl2.items(1)
		  s.selected =false
		  
		  For n = 0 To 11//save book list
		    songList.Selected (n)=false
		  next
		  
		  frmSongBook.height=405
		  GroupBox1.height=249
		  PageBox.Visible=false
		  
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		    
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SegmentedControl2
	#tag Event
		Sub Action(itemIndex as integer)
		  dim s as SegmentedControlItem
		  dim n as integer
		  functionName="Song Book  Action"
		  
		  
		  s = frmSongBook.SegmentedControl1.items(0)
		  s.selected =false
		  s = frmSongBook.SegmentedControl1.items(1)
		  s.selected =false
		  
		  For n = 0 To 11//save book list
		    songList.Selected (n)=false
		  next
		  
		  frmSongBook.height=405
		  GroupBox1.height=249
		  PageBox.Visible=false
		  
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtStartingNumber
	#tag Event
		Sub LostFocus()
		  functionName="Ending Number"
		  if me.text="" then return
		  
		  if IsNumeric(me.text)=false then
		    msgbox("Only numerical values are allowed.")
		  else
		    if  val(me.text)< 1  then
		      msgbox("This setting must be >0.")
		    end if
		  end if
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtEndingNumber
	#tag Event
		Sub LostFocus()
		  functionName="Ending Number"
		  
		  if me.text="" then return
		  
		  if IsNumeric(me.text)=false then
		    msgbox("Only numerical values are allowed.")
		    return
		  else
		    if  val(me.text)< 1  then
		      msgbox("This setting must be >0.")
		      return
		    end if
		    
		    if  val(me.text)<val(txtStartingNumber.text) then
		      msgbox("This setting must be >the starting number.")
		      return
		    end if
		  end if
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbCreateMidis
	#tag Event
		Sub Action()
		  dim n as integer
		  dim f,f2 as FolderItem
		  dim lchan as integer=0
		  dim lType as integer
		  dim lvalue as integer
		  dim lvalue2 as integer
		  dim lvalue3 as integer
		  dim lTime As integer=0
		  dim rtn as integer
		  dim lText as string
		  dim lId as integer  'string
		  dim lIdNumber as integer
		  dim midiPath, pdfPath as string
		  dim fileToload as string
		  dim CreateMidis as SegmentedControlItem= SegmentedControl1.items(0)' SegmentedControl1.items(1)
		  dim MergeMidi as SegmentedControlItem=SegmentedControl1.items(1)' SegmentedControl1.items(2)
		  Dim dialogOpen As New OpenDialog
		  Dim fileType As New FileType
		  dim shortString1,shortString2 as string
		  dim X as Cstring
		  dim s as string
		  
		  if CreateMidis.selected then
		    functionName = "CreateMidis"
		    if HPid > 0  then                   //Load Ref
		      call HpFree(HPid)
		      Hpid=0
		    end if
		    HPid= HpInit()
		    If HPid = 0 then ReportErrors("Init Hpid",rtn,functionName)
		    fileToLoad=GetAppFolder.Child("Resources").NativePath + "Ref3.mid "
		    rtn=HpLoad(HPid, fileToLoad)
		    if rtn>0 then ReportErrors("Load Ref", rtn,functionName)
		    rtn=HpSelect(HPid,HP_ALL_EVENTS)
		    rtn=HpCopy(HPid)//copy reference midi
		    
		    Dim dlg as New SelectFolderDialog
		    dlg.ActionButtonCaption="Select"
		    dlg.PromptText="Scroll to desired folder"
		    dlg.Title="Select a folder to place Registration Midi Files"
		    if processedMidisFolder= Nil then
		      dlg.InitialDirectory=SpecialFolder.Documents
		    else
		      dlg.InitialDirectory= processedMidisFolder
		    end if
		    f=dlg.ShowModal()
		    
		    If f <> Nil then
		      //use the folderitem here
		      processedMidisFolder=f
		      midiPath=f.NativePath
		    else
		      msgbox("No folder selected")
		      return
		    end if
		    
		    for n= val(txtStartingNumber.text) to val(txtEndingNumber.text)
		      
		      if HPid2 > 0  then      //
		        call HpFree(HPid2)
		        Hpid2=0
		      end if
		      HPid2= HpInit()//create target midi
		      
		      lId=n
		      lText="Pg " +str(n)+ " - "+ mid(BookName ,1, Instr(BookName, "."))
		      
		      rtn=HpPaste(HPid2,0,HP_Delete,HP_ALL_EVENTS)// paste reference into target, deleting existing events
		      //Edit Target
		      lType=66560 //  "Bank select MSB"
		      lvalue3=105+SelectedRow
		      rtn=HpInsertController(HPid2,ltime,lchan,ltype,lvalue3,HP_NO_CONTROLLER_NUMBER)
		      
		      lIdNumber=(lId)
		      lvalue=floor(lIdNumber/128)
		      lvalue2= lIdNumber- floor(lIdNumber/128)*128//program change
		      lType=525312 //  "Bank select lsb"
		      rtn=HpInsertController(HPid2,ltime,lchan,ltype,lvalue,HP_NO_CONTROLLER_NUMBER)
		      rtn=HpInsertProgramChange(Hpid2,ltime,lchan,lvalue2)
		      
		      rtn = HpSave(HPid2,midiPath+lText +"mid",HP_SMF0)  //HP_Save(HPid,name,midiFormat)//Save Target
		      
		    next
		  end if 
		  If MergeMidi.selected then
		    n=val(frmSongBook.txtStartingNumber.Text)
		    if n>0 then  // there is a page number
		      functionName = "MergeMidi"
		      dialogOpen.InitialDirectory=SpecialFolder.Documents  ' f2
		      dialogOpen.Title = "Browse and Select a midi file to add the page commands to."
		      fileType.Name = "mid"
		      fileType.Extensions = "mid"
		      dialogOpen.Filter = fileType
		      dialogOpen.ActionButtonCaption = "OK"
		      dialogOpen.MultiSelect = false
		      f=dialogOpen.ShowModal
		      If f <> Nil Then  //get file to merge with 
		        if HPid > 0  then                   //Load Ref
		          call HpFree(HPid)
		          Hpid=0
		        end if
		        HPid= HpInit()
		        If HPid = 0 then ReportErrors("Init Hpid",rtn,functionName)
		        fileToLoad=f.NativePath 
		        rtn=HpLoad(HPid, fileToLoad)
		        if rtn>0 then ReportErrors("Load Ref", rtn,functionName)
		        rtn=HpSelect(HPid,HP_ALL_EVENTS)
		        rtn=HpCopy(HPid)//copy reference midi
		        
		        if HPid2 > 0  then      //
		          call HpFree(HPid2)
		          Hpid2=0
		        end if
		        HPid2= HpInit()//create target midi
		        rtn=HpPaste(HPid2,0,HP_Delete,HP_ALL_EVENTS)// paste reference into target, deleting existing events
		        //Edit Target
		        lId=n
		        if len(left(f.name, instr(f.name,".")-1))> 15 then 
		          shortString1=left(f.name,15)+"~" 
		        else
		          shortString1=left(f.name, instr(f.name,".")-1)
		        end if 
		        if len(left(BookName , Instr(BookName, ".")-1))>15 then
		          shortString2=left(BookName ,15)+"~"
		        else
		          shortString2=left(BookName , Instr(BookName, ".")-1)
		        end if
		        
		        rtn=HpRewind(HPid2)
		        if rtn>0 then ReportErrors("Rewind",rtn,functionName)
		        
		        Do
		          rtn= HpReadEvent(HPid2)
		          if rtn >0 then exit
		          
		          select Case eventTypeCode
		            
		          case 2048//"HP_SYSEX"
		            if HpReadSysex(HPid2,eventID)>0 then ReportErrors("Read sysex",rtn,functionName)// saves to eventTime, sysexData and sysex Length
		            s=trim(StringToHex(sysexData))
		            if s="F0 43 10 4C 00 00 7E 00 F7" then//delete
		              rtn=HpDeleteEvent(HPid2,eventID)
		            end if
		          end select
		          
		        loop
		        
		        ltime=0
		        X =ChrB(&hF0) + ChrB(&h43) + ChrB(&h10) + ChrB(&h4C) + ChrB(&h00) + ChrB(&h00)+ ChrB(&h7E)+ ChrB(&h00)+ ChrB(&hF7)//XGOn
		        rtn=HpInsertSysEx(HPid2,ltime,X)
		        if Rtn>0 then ReportErrors("Insert XGon",rtn,functionName)
		        
		        ltime=0
		        lText="Pg " +str(n)+ " - "+shortString2 + " "+ shortString1
		        lType=66560 //  "Bank select MSB"
		        lvalue3=105+SelectedRow
		        rtn=HpInsertController(HPid2,ltime,lchan,ltype,lvalue3,HP_NO_CONTROLLER_NUMBER)
		        
		        lIdNumber=(lId)
		        lvalue=floor(lIdNumber/128)
		        lvalue2= lIdNumber- floor(lIdNumber/128)*128//program change
		        lType=525312 //  "Bank select lsb"
		        rtn=HpInsertController(HPid2,ltime,lchan,ltype,lvalue,HP_NO_CONTROLLER_NUMBER)
		        rtn=HpInsertProgramChange(Hpid2,ltime,lchan,lvalue2)
		        
		        ' ETIENNE
		        lType=66560 //  "Bank select MSB"
		        lvalue3=0
		        rtn=HpInsertController(HPid2,ltime,lchan,ltype,lvalue3,HP_NO_CONTROLLER_NUMBER)
		        
		        Dim dlg as New SelectFolderDialog
		        dlg.ActionButtonCaption="Select"
		        dlg.Title="Select location to place the edited midi file"
		        if processedMidisFolder= Nil then
		          dlg.InitialDirectory=SpecialFolder.Documents
		        else
		          dlg.InitialDirectory= processedMidisFolder
		        end if
		        
		        
		        f=dlg.ShowModal()
		        
		        If f <> Nil then
		          //use the folderitem here
		          processedMidisFolder=f
		          midiPath=f.NativePath
		        else
		          msgbox("No folder selected")
		          return
		        end if
		        
		        rtn = HpSave(HPid2,midiPath+lText+".mid" ,HP_SMF0)  //HP_Save(HPid,name,midiFormat)//Save Target
		        
		      end if 
		      
		    end if
		  end if 
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		    
		    
		    
		    
		    
		    
		    
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BookName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="SelectedRow"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
