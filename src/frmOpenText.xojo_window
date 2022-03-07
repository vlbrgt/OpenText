#tag Window
Begin Window frmOpenText
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   128
   ImplicitInstance=   True
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1069498498
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   False
   Title           =   "OpenText"
   Visible         =   True
   Width           =   404
   Begin GroupBox GroupBox1
      AllowAutoDeactivate=   True
      Bold            =   True
      Caption         =   "Instrument"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   66
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   183
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   14
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   188
      Begin PopupMenu popMidiIn
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   198
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   40
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   159
      End
   End
   Begin GroupBox GroupBox2
      AllowAutoDeactivate=   True
      Bold            =   True
      Caption         =   "Status"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   66
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   21
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   14
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   144
      BeginSegmented SegmentedControl SegmentedControl1
         Enabled         =   True
         Height          =   33
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Left            =   28
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacControlStyle =   0
         Scope           =   0
         Segments        =   "Run\nplay_blue24\nFalse\rStop\nstop_blue24\nFalse"
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   "True"
         Top             =   37
         Transparent     =   True
         Visible         =   True
         Width           =   130
      End
   End
   Begin Label lblReader
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   40
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   21
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   82
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   243
   End
   Begin Timer Timer1
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Period          =   100
      RunMode         =   2
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin PushButton pbAutoRunAtStart
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Dummy AutoRun Button"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   21
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
      Top             =   166
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   151
   End
   Begin Label lblAutoRun
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   285
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   89
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   85
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  dim OptionsString as string
		  dim filetoSave as string
		  dim f as FolderItem
		  
		  functionName="Close"
		  
		  if IsStarted then
		    input.Close
		    IsStarted=false
		  end if
		  if HPid > 0  then
		    call HpFree(HPid)
		    Hpid=0
		  end if
		  if HPid2 > 0  then
		    call HpFree(HPid2)
		    Hpid2=0
		  end if
		  
		  'fileToSave=GetAppfolder.AbsolutePath  +"OpenText.ini"
		  'OptionsString = fileReader  + endofLine
		  'WriteTextFile(OptionsString, fileToSave)
		  
		  
		  //creates folders first time if missing
		  'dim f as FolderItem
		  'f = SpecialFolder.ApplicationData.Child("VoEtSoft")
		  'if not f.Exists then f.CreateAsFolder
		  'f = f.Child("OpenText")    // optional
		  'if not f.Exists then f.CreateAsFolder
		  f = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("OpenText.ini")
		  fileToSave=f.NativePath  '+"OpenText.ini"
		  OptionsString = fileReader  + endofLine
		  If autoRunAtStart = True Then
		    OptionsString = OptionsString + "True" + endofLine
		  Else
		    OptionsString = OptionsString + "False" + endofLine
		  End If
		  WriteTextFile(OptionsString, fileToSave)
		  
		  
		  
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim i As WindowsMidiInputInfoMBS
		  dim c,n as integer
		  dim f,f2,f3 as folderitem
		  dim fileName as string
		  dim s as string
		  dim settings() as string
		  dim stream as TextInputStream
		  
		  functionName="Open OpenText"
		  
		  
		  midi=new WindowsMidiMBS
		  
		  c=midi.NumberOfMidiInputDevices
		  popMidiIn.AddRow "Select MidiDevice"
		  for n=0 to c-1
		    i=midi.InputDevice(n)
		    popMidiIn.AddRow i.name
		  next
		  
		  
		  if c =0 then 
		    msgbox("Please power up your instrument and select a midi device  before depressing the OpenText Run button. ")
		    'frmOpenText.close
		    
		  else
		    popMidiIn.ListIndex=1
		  end if 
		  
		  
		  //creates folders first time if missing
		  
		  f = SpecialFolder.ApplicationData.Child("VoEtSoft")
		  if not f.Exists then f.CreateAsFolder
		  f = f.Child("OpenText")    // optional
		  If Not f.Exists Then f.CreateAsFolder
		  'f = f.Child("Registration Midis")    // optional
		  'if not f.Exists then f.CreateAsFolder
		  f = f.Child("PDF Files and Books")    // optional
		  if not f.Exists then f.CreateAsFolder
		  
		  f = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("OpenText.ini")
		  
		  lblReader.text="Reader Song Files : Sumatra.exe" + endofLine + "Reader Song Books : Sumatra.exe" 
		  if f <> Nil and f.exists then
		    stream=f.OpenAsTextFile
		    s =stream.ReadAll
		    stream.close
		    settings() =Split(s, EndOfLine)
		    if settings(0)<>"" then fileReader=settings(0)
		    f3=getfolderitem(fileReader)
		    if F3 <> Nil and f3.exists and len(filereader)>5 then
		      lblReader.text="Reader Song Files : " + F3.Name + endofLine + "Reader Song Books : Sumatra.exe" 
		    end if 
		    if settings(1) = "True" Then
		      autoRunAtStart = True
		      lblAutoRun.Text = "Autorun : ON"
		    Else
		      autoRunAtStart = False
		      lblAutoRun.Text = "Autorun : OFF"
		    End If
		    
		  else
		    fileReader=""
		    
		  end if
		  
		  f3 = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("SumetraPDF.exe")
		  if f3.exists= false then
		    f=GetFolderItem(getAppfolder.Child("Resources").NativePath + "SumatraPDF.exe")
		    f2=SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText")
		    f.CopyFileTo f2
		  end if 
		  
		  f3 = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("sumatrapdfprefs.dat")
		  if f3.exists= false then
		    f=getFolderItem(getAppfolder.Child("Resources").NativePath + "sumatrapdfprefs.dat")
		    f2=SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText")
		    f.CopyFileTo f2
		  end if
		  
		  'me.height=100
		  
		  If autoRunAtStart = True Then
		    pbAutoRunAtStart.Push
		  Else
		    SegmentedControl1.Items(1).Selected = True
		    ManageSongFilesMenu.Child("ManageSongFilesAutorunonStart").Checked = False
		  End If
		  
		  
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		    
		    
		    
		    
		    
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function CreateReferenceMidisMenu() As Boolean Handles CreateReferenceMidisMenu.Action
			call ReferenceMidis
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpAbout() As Boolean Handles HelpAbout.Action
			frmAbout.ShowModal
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpEMailAuthor() As Boolean Handles HelpEMailAuthor.Action
			EMailAuthor
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpManual() As Boolean Handles HelpManual.Action
			call GetManual
			Return True
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpProgramUpdates() As Boolean Handles HelpProgramUpdates.Action
			call GotoWebSite
			Return True
			
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function LoadFilesForProcessingMenu() As Boolean Handles LoadFilesForProcessingMenu.Action
			
			
			call LoadFilesForProcessing
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ManageSongBooksMenu() As Boolean Handles ManageSongBooksMenu.Action
			frmSongBook.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ManageSongFilesAddSongFiles() As Boolean Handles ManageSongFilesAddSongFiles.Action
			dim s as SegmentedControlItem
			functionName="ManageSongFilesAddItem"
			
			
			s =frmOpenText.SegmentedControl1.items(1)
			s.selected =true
			frmOpenText.title= "OpenText is Stopped"
			call LoadFilesForProcessing
			Return True
			
			
			Exception
			'System.DebugLog( "Unknown exception in: " +functionName )
			MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ManageSongFilesAutorunonStart(index as Integer) As Boolean Handles ManageSongFilesAutorunonStart.Action
			Dim mnu As New MenuItem
			mnu = ManageSongFilesMenu.Child("ManageSongFilesAutorunonStart")
			
			If mnu.Checked = True Then
			mnu.Checked = False
			autoRunAtStart = False
			lblAutoRun.Text = "Autorun : OFF"
			Else
			mnu.Checked = True
			autoRunAtStart = True
			lblAutoRun.Text = "Autorun : ON"
			End If
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ManageSongFilesCreateSongFileMidis() As Boolean Handles ManageSongFilesCreateSongFileMidis.Action
			call ReferenceMidis
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ManageSongFilesMergeSongFileMidi() As Boolean Handles ManageSongFilesMergeSongFileMidi.Action
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
			dim lId as string
			dim lIdNumber as integer
			dim midiPath as string
			dim fileToload as string
			Dim dialogOpen As New OpenDialog
			Dim fileType As New FileType
			dim shortString1,shortString2 as string
			dim X as Cstring
			dim s as string
			
			
			//Open folder with pdfs and get number and filename to use in and for midi control file
			fileType.Name = "pdf"
			fileType.Extensions = "pdf"
			f2= SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books")
			dialogOpen.InitialDirectory=f2
			dialogOpen.Title = "Select the unprocessed (not in ID.pdf format) PDF text file ."
			dialogOpen.Filter = fileType
			dialogOpen.ActionButtonCaption = "Select File"
			dialogOpen.MultiSelect = false
			
			If dialogOpen.ShowModal <> Nil Then
			for n=0 to dialogOpen.count-1
			if len(dialogOpen.Item(n).name)>4 then
			lId=left(dialogOpen.Item(n).name, 4)
			lText=mid(dialogOpen.Item(n).Name, 1, Instr(dialogOpen.Item(n).Name, "."))
			if SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books").child( left(dialogOpen.Item(n).name,4) +".pdf"  )<> Nil then
			SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books").child( left(dialogOpen.Item(n).name,4) +".pdf"  ).delete
			
			end if
			
			
			dialogOpen.Item(n).name=left(dialogOpen.Item(n).name,4) +".pdf"
			end if
			next
			End If
			
			
			if val(lId)>0 then  // there is a page number
			functionName = "Song File Merge Midi"
			dialogOpen.InitialDirectory=SpecialFolder.Documents  ' f2
			dialogOpen.Title = "Browse and select a midi file to add the page command to."
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
			
			lType=66560 //  "Bank select MSB"
			lvalue3=100
			rtn=HpInsertController(HPid2,ltime,lchan,ltype,lvalue3,HP_NO_CONTROLLER_NUMBER)
			
			lIdNumber=val(lId)
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
			'use the folderitem here
			processedMidisFolder=f
			midiPath=f.NativePath
			else
			msgbox("No folder selected")
			return true
			end if
			
			rtn = HpSave(HPid2,midiPath+lText+"mid" ,HP_SMF0)  //HP_Save(HPid,name,midiFormat)//Save Target
			
			end if
			
			end if
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ManageSongFilesProcessSongFiles() As Boolean Handles ManageSongFilesProcessSongFiles.Action
			dim s as SegmentedControlItem
			
			
			functionName="ManageSong FilesProcess" 
			
			s =frmOpenText.SegmentedControl1.items(1)
			s.selected =true
			frmOpenText.title= "OpenText is Stopped"
			call ReferenceMidis
			Return True
			
			Exception
			'System.DebugLog( "Unknown exception in: " +functionName )
			MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ManageSongFilesSelectReaderforSongFiles() As Boolean Handles ManageSongFilesSelectReaderforSongFiles.Action
			Dim dialogOpen As New OpenDialog
			Dim fileType As New FileType
			dim f as folderitem
			dim CurrentReader as string
			'
			functionName="SelectReader"
			
			'if fileReader="" then 
			'
			'msgbox("The default reader for all files is Sumatra.exe")
			'else
			'msgbox(" The pdf reader for song files is "+ filereader+ endofline+endofline+ "The reader for book files is the default, Sumatra.exe")
			'end if 
			
			fileType.Name = "exe"
			fileType.Extensions = "exe"
			'dialogOpen.InitialDirectory= f2  'SpecialFolder.Documents  ' f2
			
			dialogOpen.Title = "Select a pdf Reader to use only for Song Files. Sumatra is the default."
			
			dialogOpen.Filter = fileType
			dialogOpen.ActionButtonCaption = "Select Reader"
			dialogOpen.CancelButtonCaption =" Use Default"
			dialogOpen.PromptText=""
			dialogOpen.MultiSelect = false
			
			
			If dialogOpen.ShowModal <> Nil Then
			
			f=dialogOpen.Item(0)
			fileReader=f.NativePath
			
			
			lblReader.text="Reader Song Files : " + f.Name + endofLine + "Reader Song Books : Sumatra.exe"
			Else 
			fileReader =""
			lblReader.Text="Reader Song Files : Sumatra.exe" + EndOfLine + "Reader Song Books : Sumatra.exe" 
			end if 
			
			
			Return True
			Exception
			'System.DebugLog( "Unknown exception in: " +functionName )
			MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function OpenaPDFMenu() As Boolean Handles OpenaPDFMenu.Action
			Dim filename As String
			dim WinShell as new Shell
			dim argument as string ="-bgcolor #FFFFFF "
			dim f as folderItem
			
			f = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("SumatraPDF.exe")
			fileName=f.NativePath
			WinShell.Execute fileName,argument
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PDFReaderMenu() As Boolean Handles PDFReaderMenu.Action
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProcessFilesMenu() As Boolean Handles ProcessFilesMenu.Action
			call ReferenceMidis
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Note, Name = Version Data
		
		
		Provide sumetra. Because is required for page and will not use create tabs(CHECK!!!) or open new versions 
		Remind users that they can rotate text to use other screen aspect. 
		How to interface to Ipad?
		
		Ist step in combining Open Book and Open Text.
		
		v1.2.1 1st clean up includes new MemoryBlock replaces newMemoryBlock
		v1.2.8 rebuild from 126. 127 did not see pages
		v1.3.0 ist use of storing ini stuff in Applications data
		v1.3.1 use Applications Data for pdf books, referemce midis, pdf files
		Remembers last  folder used in getting song files 
		v1.3.2 Moved sumetra to user folder
		1.3.3 Allows use without midi devices
		1.3.5 I thought was the released, bu it not reads song books files
		1.3.6(13.7 is copy) has code for song book merge but like 135 no works with older song midis
		1.3.8 is 1.3.4 with a rebuild of 1.3.6 capabilirty? Made 1.3.8 work by eliminating the remembered folders . 
		1.4.0 has fix for song merge. There can only be on XG on and it must be before Program change; fixed processedMidisFolder too.
		1.4.1 added song book delete
		1.4.2 adding Song File merge
		1.4.3 deleted a xxx1.pdf file before file create or merge so no duplicate of orginal pdf
		
		ETIENNE 
		Started from OpenText(Michaels 143).rbp
		
		Removed the 'hpDelete(pointer)' in all methods in the 'HP_Module'
		Removed frmSongBook140
		Renamed frmOpenText to frmOpenText
		Removed eList control in frmOpenText
		Renamed MenuBar1 in mnuFrmOpenText
		
		Saved as 'OpenText v19.1.1-0512-23h17'
		frmAbout aangepast
		EmailAuthor aangepast
		
		#OpenText v19.1.1-0513-15h50 -> Release version Open Text v19r1
		
		#v19.2.1-0516-12h56
		Created a menu item 'Autorun on Start
		Created prroperty in Module -> autoRunAtStart as a Boolean and Public
		Created a non visible Push Button -> pbAutoRunAtStart
		
		
		
		
		
	#tag EndNote


	#tag Property, Flags = &h1
		Protected midi As WindowsMidiMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		output As MyWindowsMidiOutputMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		xinput As MyWindowsMidiInputMBS
	#tag EndProperty


#tag EndWindowCode

#tag Events popMidiIn
	#tag Event
		Sub Change()
		  inputPort= (me.listindex)-1
		  
		  functionName= "midiDeviceChange"
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SegmentedControl1
	#tag Event
		Sub Action(itemIndex as integer)
		  functionName="Run-Stop"
		  if itemIndex = 0 then
		    // code for when segment 0 is selected
		    dim l,c,n, m as Integer
		    dim errorText as string
		    dim i as WindowsMidiInputInfoMBS
		    Dim name As String
		    Dim key As String
		    Dim delimiter As Integer
		    dim f as FolderItem
		    dim stream as TextInputStream
		    dim fileName as string
		    dim allText as String
		    dim lines() as string
		    
		    targetBook = Nil
		    targetBook = New Collection
		    
		    if popMidiIn.ListIndex <1 then
		      m=msgBox("Please power up your instrument, wait until it appears on the PC, then click OK." +endofline+endofline+ "To start OpenText running later, click Cancel",1 )
		      select case m
		        
		      case 1
		        popMidiIn.deleteallrows
		        c=midi.NumberOfMidiInputDevices
		        if c>0 then
		          popMidiIn.AddRow "Select MidiDevice"
		          for n=0 to c-1
		            i=midi.InputDevice(n)
		            popMidiIn.AddRow i.name
		          next
		          popMidiIn.ListIndex=1
		          
		        else
		          dim s as SegmentedControlItem
		          s =frmOpenText.SegmentedControl1.items(1)
		          s.selected =true
		          msgbox("No MidiDevices are available.")
		          return
		        end if 
		        
		      case 2
		        dim s as SegmentedControlItem
		        s =frmOpenText.SegmentedControl1.items(1)
		        s.selected =true
		        return
		      end select 
		      
		    end if 
		    
		    
		    if IsStarted then
		      'MsgBox("OpenText is already Monitoring. ")
		      return
		    end if
		    '
		    l=popMidiIn.ListIndex-1
		    input=new MyWindowsMidiInputMBS
		    
		    if l=-1 then
		      MsgBox "Please select an input device."
		      Return
		    else
		      input.Open l,65536
		    end if
		    if input.Lasterror<>0 then
		      errorText=input.InputErrorText(input.Lasterror )
		      Msgbox("OpenText has encountered this error: " + errorText)
		      'MsgBox("Please turn on your instrument and select a midi device before running OpenText" + endofline + endofline + "OpenText will now exit")
		      'frmOpenText.close
		      Return
		    end if
		    
		    'fileName = GetAppFolder.AbsolutePath   +"pdfBooks.dat"
		    'f=GetFolderItem(fileName)
		    f = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("pdfBooks.dat")
		    
		    if f <> Nil and f.exists then
		      stream=f.OpenAsTextFile
		      allText =stream.ReadAll
		      stream.close
		      'end if
		      lines()= Split(allText, EndOfLine)
		      
		      For m = 0 To 11' UBound(lines()) - 1
		        if m> UBound(lines()) - 1 then  exit
		        name = lines(m)
		        key=str(m+105)
		        targetBook.Add name, key
		      next
		      
		    end if 
		    
		    input.Start
		    frmOpenText.title= "OpenText is Running"
		    
		    if input.Lasterror<>0 then
		      errorText=input.InputErrorText(input.Lasterror )
		      Msgbox("OpenText has encountered this error: " + errorText)
		      'MsgBox("Please turn on your instrument and select a midi device before starting OpenText" + endofline + endofline + "OpenTest will now exit")
		      'frmOpenText.close
		      Return
		    end if
		    
		    IsStarted=true
		    
		  else
		    // code for when segment 1 is selected
		    frmOpenText.title= "OpenText is Stopped"
		    if IsStarted then
		      input.Close
		      IsStarted=false
		    end if
		  end if
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  if midi<>nil then
		    midi.Idle
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbAutoRunAtStart
	#tag Event
		Sub Action()
		  ' Includes the same code as SegmentedControl1.Action for the Run button.
		  ' Only when input.Start then button Run is highlighted and Menu item is checked
		  
		  Dim l, c, n, m As Integer
		  Dim errorText As String
		  Dim i As WindowsMidiInputInfoMBS
		  Dim name As String
		  Dim key As String
		  Dim delimiter As Integer
		  Dim f As FolderItem
		  Dim stream As TextInputStream
		  Dim fileName As String
		  Dim allText As String
		  Dim lines() As String
		  
		  targetBook = Nil
		  targetBook = New Collection
		  
		  If popMidiIn.ListIndex < 1 Then
		    m = msgBox("Please power up your instrument, wait until it appears on the PC, then click OK." + endofline + endofline + "To start OpenText running later, click Cancel", 1)
		    Select Case m
		      
		    Case 1
		      popMidiIn.deleteallrows
		      c = midi.NumberOfMidiInputDevices
		      If c > 0 Then
		        popMidiIn.AddRow "Select MidiDevice"
		        For n = 0 To c-1
		          i = midi.InputDevice(n)
		          popMidiIn.AddRow i.name
		        Next
		        popMidiIn.ListIndex = 1
		        
		      Else
		        Dim s As SegmentedControlItem
		        s = frmOpenText.SegmentedControl1.items(1)
		        s.selected = True
		        msgbox("No MidiDevices are available.")
		        Return
		      End If
		      
		    Case 2
		      Dim s As SegmentedControlItem
		      s = frmOpenText.SegmentedControl1.items(1)
		      s.selected = True
		      Return
		    End Select
		    
		  End If
		  
		  
		  If IsStarted Then
		    'MsgBox("OpenText is already Monitoring. ")
		    Return
		  End If
		  '
		  l = popMidiIn.ListIndex-1
		  input = New MyWindowsMidiInputMBS
		  
		  If l = -1 Then
		    MsgBox "Please select an input device."
		    Return
		  Else
		    input.Open l, 65536
		  End If
		  If input.Lasterror <> 0 Then
		    errorText = input.InputErrorText(input.Lasterror)
		    Msgbox("OpenText has encountered this error: " + errorText)
		    'MsgBox("Please turn on your instrument and select a midi device before running OpenText" + endofline + endofline + "OpenText will now exit")
		    'frmOpenText.close
		    Return
		  End If
		  
		  'fileName = GetAppFolder.AbsolutePath   +"pdfBooks.dat"
		  'f=GetFolderItem(fileName)
		  f = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("pdfBooks.dat")
		  
		  If f <> Nil And f.exists Then
		    stream = f.OpenAsTextFile
		    allText = stream.ReadAll
		    stream.close
		    'end if
		    lines() = Split(allText, EndOfLine)
		    
		    For m = 0 To 11 ' UBound(lines()) - 1
		      If m > UBound(lines()) - 1 Then Exit
		      name = lines(m)
		      key = str(m + 105)
		      targetBook.Add name, key
		    Next
		    
		  End If
		  
		  input.Start
		  frmOpenText.title = "OpenText is Running"
		  SegmentedControl1.Items(0).Selected = True
		  ManageSongFilesMenu.Child("ManageSongFilesAutorunonStart").Checked = True
		  
		  If input.Lasterror <> 0 Then
		    errorText = input.InputErrorText(input.Lasterror)
		    Msgbox("OpenText has encountered this error: " + errorText)
		    'MsgBox("Please turn on your instrument and select a midi device before starting OpenText" + endofline + endofline + "OpenTest will now exit")
		    'frmOpenText.close
		    Return
		  End If
		  
		  IsStarted = True
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
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="300"
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
		InitialValue="False"
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
#tag EndViewBehavior
