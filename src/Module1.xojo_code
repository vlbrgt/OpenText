#tag Module
Protected Module Module1
	#tag Method, Flags = &h0
		Sub CopyFileorFolder(source as FolderItem, destination as FolderItem)
		  
		  Dim i as Integer
		  Dim newFolder as FolderItem
		  
		  functionName="Copy File or Folder"
		  
		  If source.directory then //it's a folder
		    newFolder=destination'.child(source.name)
		    
		    For i=1 to source.count //go through each item
		      
		      source.item(i).CopyFileTo newFolder
		      
		    next
		    
		    For i=1 to source.count //go through each item
		      source.item(i).delete
		    next
		    source.item(1).delete
		    
		  end if
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EMailAuthor()
		  ShowURL "mailto:volbragte@telenet.be"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAppFolder() As FolderItem
		  Dim f as FolderItem = GetFolderItem("")
		  #If DebugBuild Then f = f.Parent
		  Return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetManual()
		  Dim manual as shell
		  dim fileToload as string
		  
		  functionName="Get Manual"
		  
		  //fileToLoad=getappfolder.NativePath + "OpenText.pdf"
		  fileToLoad = GetAppFolder.Child("Resources").NativePath + "OpenText.pdf"
		  manual =new shell
		  
		  #if TargetWin32
		    
		    manual.execute fileToLoad
		    
		  #endif
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMidiEvent(midiCmd As integer, channel as integer ,data1 as integer,data2 as integer) As string
		  ' OpenText
		  ' (c) Michael P. Bedesem and Etienne Volbragt
		  ' 
		  
		  Dim cont As String
		  Dim midiEvent As String
		  Dim ID As Integer
		  Dim textID As String ' integer
		  Dim manual As shell
		  Dim n As Integer
		  Dim fileName As String
		  Dim CurrentFolder As folderItem
		  Dim f As Folderitem
		  Dim f3 As FolderItem
		  Dim f2 As folderitem = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books")
		  Dim bookPath As String
		  Dim pdfFile As String
		  Dim WinShell As New Shell
		  
		  functionName = "GetMidiEvent"
		  
		  Select Case floor(midiCmd / 16)
		    
		  Case 11 'B0
		    Select Case data1
		    Case 0
		      cont = "Bank Select MSB"
		      CurrentMSB = data2
		    Case 32
		      cont = "Bank Select LSB"
		      CurrentLSB = data2
		    End Select
		    
		    midiEvent = "Control Change  " + cont + " Value:" + Str(data2)
		    
		  Case 12 'C0
		    midiEvent = "Program Change: " + Str(data1)
		    
		    Select Case currentMSB
		      
		    Case 100
		      ID = CurrentLSB * 128 + data1 // leading digits of pdf filename
		      textID = "0"
		      
		      If fileReader <> "" Then
		        fileName = fileReader
		        bookPath = f2.NativePath + format(ID, "0000") + ".pdf"
		        f = getFolderItem(bookPath)
		        pdfFile = f.shellPath
		        WinShell.Execute fileName, pdfFile
		      Else // use default reader = SumatraPDF.exe
		        f3 = SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("SumatraPDF.exe")
		        fileName = f3.NativePath
		        bookPath = f2.NativePath + format(ID, "0000") + ".pdf"
		        f = getFolderItem(bookPath)
		        pdfFile = "-reuse-instance -page " + textID + " " + f.shellPath
		        WinShell.Execute fileName, pdfFile
		      End If
		      
		      currentMSB = 0
		      currentLSB = 0
		      
		    Case 105 To 116
		      
		      ID = CurrentLSB * 128 + data1 //page number
		      textID = str(ID)
		      fileName = GetAppFolder.Child("Resources").NativePath + "SumatraPDF.exe"
		      bookPath = targetBook.item(str(currentMSB))
		      If instr(bookPath, ".pdf") > 0 Then
		        'BookPath=GetAppFolder.absolutePath + BookPath
		        bookPath = f2.NativePath + bookPath
		        f = getFolderItem(bookPath)
		        pdfFile = "-reuse-instance -page " + textID + " " + f.shellPath
		        WinShell.Execute fileName, pdfFile
		      End If
		      
		      currentMSB = 0
		      CurrentLSB = 0
		      
		    End Select
		    
		    
		  End Select
		  
		  Return midiEvent
		  
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox("A problem has been encountered in the function " + functionName + ". If the cause is not obvious, please report this to the author." + endofLine + endofLine + "You can use the Help/E-Mail Author menu item for this purpose.")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GotoWebSite()
		  
		  
		  dim dest as string
		  functionName="GotoWebSite"
		  
		  dest= "http://psrtutorial.com/MB/volbragt.html"
		  
		  ShowURL dest
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFilesForProcessing()
		  Dim dialogOpen As New OpenDialog
		  Dim fileType As New FileType
		  dim f,f2,f3 as folderitem
		  dim n as integer
		  Dim i as Integer
		  
		  functionName="Load Files for Processing"
		  n=1
		  f2= SpecialFolder.Documents
		  n=2
		  f3= SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books")
		  fileType.Name = "pdf"
		  fileType.Extensions = "pdf"
		  'dialogOpen.InitialDirectory=f2
		  n=3
		  if initialFileDirectory= Nil then 
		    dialogOpen.InitialDirectory=f2  
		    n=4
		  else
		    dialogOpen.InitialDirectory= initialFileDirectory
		    n=5
		  end if 
		  dialogOpen.Title = "Browse and Select Unporocessed  PDF files."
		  dialogOpen.Filter = fileType
		  dialogOpen.ActionButtonCaption = "Select Files"
		  dialogOpen.MultiSelect = True
		  n=6
		  f=dialogOpen.ShowModal
		  n=7
		  If f <> Nil Then
		    initialFileDirectory=f.parent
		    n=8
		    For i=0 to dialogOpen.count-1 //go through each item
		      dialogOpen.item(i).CopyFileTo f3
		    next
		    
		  end if 
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author. Error = "+ Str(n)  + endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OldReferenceMidis()
		  dim n as integer
		  dim f as FolderItem
		  dim lchan as integer=0
		  dim lType as integer
		  dim lvalue as integer
		  dim lvalue2 as integer
		  dim lTime As integer=0
		  dim rtn as integer
		  dim lText as string
		  
		  Dim fileType As New FileType
		  dim lId as string
		  dim lIdNumber as integer
		  dim midiPath, pdfPath as string
		  dim fileToload as string
		  
		  functionName = "ReferenceMidis"
		  
		  //Load Ref
		  if HPid > 0  then
		    call HpFree(HPid)
		    Hpid=0
		  end if
		  HPid= HpInit()
		  If HPid = 0 then ReportErrors("Init Hpid",rtn,functionName)
		  fileToLoad=GetAppFolder.Child("Resources").NativePath + "Ref.mid "
		  rtn=HpLoad(HPid, fileToLoad)
		  if rtn>0 then ReportErrors("Load Ref", rtn,functionName)
		  rtn=HpSelect(HPid,HP_ALL_EVENTS)
		  rtn=HpCopy(HPid)//copy reference midi
		  if HPid2 > 0  then
		    call HpFree(HPid2)
		    Hpid2=0
		  end if
		  HPid2= HpInit()//create target midi
		  
		  Dim dlg as New SelectFolderDialog
		  dlg.ActionButtonCaption="Select"
		  dlg.Title="Select location to place Registration Midi Files"
		  'dlg.PromptText="Prompt Text"
		  dlg.InitialDirectory=SpecialFolder.Documents
		  f=dlg.ShowModal()
		  If f <> Nil then
		    //use the folderitem here
		    midiPath=f.NativePath
		    
		    Dim dlg2 as OpenDialog
		    Dim f2 as FolderItem
		    dlg2=New OpenDialog
		    dlg2.InitialDirectory= SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books")
		    
		    
		    
		    'Dim dialogOpen As  OpenDialog
		    'dialogOpen As new OpenDialog
		    fileType.Name = "pdf"
		    fileType.Extensions = "pdf"
		    'dialogOpen.InitialDirectory= SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books")'GetAppFolder
		    'dialogOpen.Title = "Select the unprocessed (not in ID.pdf format) PDF text files ."
		    'dialogOpen.Filter = fileType
		    'dialogOpen.ActionButtonCaption = "Select Files"
		    'dialogOpen.MultiSelect = True
		    dlg2.title="Select the unprocessed (not in ID.pdf format) PDF text files ."
		    dlg2.Filter = fileType
		    dlg2.ActionButtonCaption = "Select Files"
		    dlg2.MultiSelect = True
		    If dlg2.ShowModal <> Nil Then
		      'If dialogOpen.ShowModal <> Nil Then
		      '
		      'for n=0 to dialogOpen.count-1
		      'if len(dialogOpen.Item(n).name)>4 then
		      'lId=left(dialogOpen.Item(n).name, 4)
		      'lText=mid(dialogOpen.Item(n).Name, 1, Instr(dialogOpen.Item(n).Name, "."))
		      '
		      '//Modify and save control midis
		      'lIdNumber=val(lId)
		      'lvalue=floor(lIdNumber/128)
		      'lvalue2= lIdNumber- floor(lIdNumber/128)*128//program change
		      'lType=525312 //  "Bank select lsb"
		      '
		      'rtn=HpPaste(HPid2,0,HP_Delete,HP_ALL_EVENTS)// paste reference into target, deleting existing events
		      '//Edit Target
		      'rtn=HpInsertController(HPid2,ltime,lchan,ltype,lvalue,HP_NO_CONTROLLER_NUMBER)
		      'rtn=HpInsertProgramChange(Hpid2,ltime,lchan,lvalue2)
		      'rtn = HpSave(HPid2,midiPath+lText +"mid",HP_SMF0)  //HP_Save(HPid,name,midiFormat)//Save Target
		      '
		      '
		      'dialogOpen.Item(n).name=left(dialogOpen.Item(n).name,4) +".pdf"
		      'end if
		      '
		      'next
		      
		      
		      
		    End If
		    
		    
		    
		    
		  else
		    //user cancelled
		    
		  end if
		  
		  
		  '
		  
		  
		  
		  //Open folder with pdfs and get number and filename to use in and for midi control file
		  'fileType.Name = "pdf"
		  'fileType.Extensions = "pdf"
		  'dialogOpen.InitialDirectory= SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books")'GetAppFolder
		  'dialogOpen.Title = "Select the unprocessed (not in ID.pdf format) PDF text files ."
		  'dialogOpen.Filter = fileType
		  'dialogOpen.ActionButtonCaption = "Select Files"
		  'dialogOpen.MultiSelect = True
		  '
		  'If dialogOpen.ShowModal <> Nil Then
		  '
		  'for n=0 to dialogOpen.count-1
		  'if len(dialogOpen.Item(n).name)>4 then
		  'lId=left(dialogOpen.Item(n).name, 4)
		  'lText=mid(dialogOpen.Item(n).Name, 1, Instr(dialogOpen.Item(n).Name, "."))
		  '
		  '//Modify and save control midis
		  'lIdNumber=val(lId)
		  'lvalue=floor(lIdNumber/128)
		  'lvalue2= lIdNumber- floor(lIdNumber/128)*128//program change
		  'lType=525312 //  "Bank select lsb"
		  '
		  'rtn=HpPaste(HPid2,0,HP_Delete,HP_ALL_EVENTS)// paste reference into target, deleting existing events
		  '//Edit Target
		  'rtn=HpInsertController(HPid2,ltime,lchan,ltype,lvalue,HP_NO_CONTROLLER_NUMBER)
		  'rtn=HpInsertProgramChange(Hpid2,ltime,lchan,lvalue2)
		  'rtn = HpSave(HPid2,midiPath+lText +"mid",HP_SMF0)  //HP_Save(HPid,name,midiFormat)//Save Target
		  '
		  '
		  'dialogOpen.Item(n).name=left(dialogOpen.Item(n).name,4) +".pdf"
		  'end if 
		  '
		  'next
		  '
		  '
		  '
		  'End If
		  
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		    
		    
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReferenceMidis()
		  dim n as integer
		  dim f,f2 as FolderItem
		  dim lchan as integer=0
		  dim lType as integer
		  dim lvalue as integer
		  dim lvalue2 as integer
		  dim lTime As integer=0
		  dim rtn as integer
		  dim lText as string
		  Dim dialogOpen As New OpenDialog
		  Dim fileType As New FileType
		  dim lId as string
		  dim lIdNumber as integer
		  dim midiPath, pdfPath as string
		  dim fileToload as string
		  Dim dlg as New SelectFolderDialog
		  
		  functionName = "ReferenceMidis"
		  
		  //Load Ref
		  if HPid > 0  then
		    call HpFree(HPid)
		    Hpid=0
		  end if
		  HPid= HpInit()
		  If HPid = 0 then ReportErrors("Init Hpid",rtn,functionName)
		  fileToLoad=GetAppFolder.Child("Resources").NativePath + "Ref.mid "
		  rtn=HpLoad(HPid, fileToLoad)
		  if rtn>0 then ReportErrors("Load Ref", rtn,functionName)
		  rtn=HpSelect(HPid,HP_ALL_EVENTS)
		  rtn=HpCopy(HPid)//copy reference midi
		  if HPid2 > 0  then
		    call HpFree(HPid2)
		    Hpid2=0
		  end if
		  HPid2= HpInit()//create target midi
		  
		  
		  dlg.ActionButtonCaption="Select"
		  dlg.Title="Select folder to place Registration Midi Files"
		  dlg.PromptText="Scroll to desired folder"
		  dlg.InitialDirectory=SpecialFolder.Documents
		  
		  
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
		  
		  
		  
		  //Open folder with pdfs and get number and filename to use in and for midi control file
		  fileType.Name = "pdf"
		  fileType.Extensions = "pdf"
		  f2= SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books")
		  dialogOpen.InitialDirectory=f2
		  'dialogOpen.InitialDirectory=GetAppFolder
		  dialogOpen.Title = "Select the unprocessed (not in ID.pdf format) PDF text files ."
		  dialogOpen.Filter = fileType
		  dialogOpen.ActionButtonCaption = "Select Files"
		  dialogOpen.MultiSelect = True
		  
		  
		  If dialogOpen.ShowModal <> Nil Then
		    
		    for n=0 to dialogOpen.count-1
		      if len(dialogOpen.Item(n).name)>4 then
		        lId=left(dialogOpen.Item(n).name, 4)
		        lText=mid(dialogOpen.Item(n).Name, 1, Instr(dialogOpen.Item(n).Name, "."))
		        
		        //Modify and save control midis
		        lIdNumber=val(lId)
		        lvalue=floor(lIdNumber/128)
		        lvalue2= lIdNumber- floor(lIdNumber/128)*128//program change
		        lType=525312 //  "Bank select lsb"
		        
		        rtn=HpPaste(HPid2,0,HP_Delete,HP_ALL_EVENTS)// paste reference into target, deleting existing events
		        //Edit Target
		        rtn=HpInsertController(HPid2,ltime,lchan,ltype,lvalue,HP_NO_CONTROLLER_NUMBER)
		        rtn=HpInsertProgramChange(Hpid2,ltime,lchan,lvalue2)
		        rtn = HpSave(HPid2,midiPath+lText +"mid",HP_SMF0)  //HP_Save(HPid,name,midiFormat)//Save Target
		        if SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books").child( left(dialogOpen.Item(n).name,4) +".pdf"  )<> Nil then
		          SpecialFolder.ApplicationData.Child("VoEtSoft").Child("OpenText").Child("PDF Files and Books").child( left(dialogOpen.Item(n).name,4) +".pdf"  ).delete
		          
		        end if
		        
		        dialogOpen.Item(n).name=left(dialogOpen.Item(n).name,4) +".pdf"
		      end if 
		      
		    next
		    
		    
		    
		  End If
		  
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		    
		    
		    'call copyFileorFolder(f2,f)
		    
		    'dialogOpen.Item(n).copyfileto(f2)
		    'copyFileorFolder(dialogOpen.Item(n),f)
		    
		    'filecopy(dialogOpen.Item(n).AbsolutePath,f.absolutePath+dialogOpen.Item(n).name)
		    'debug(dialogOpen.Item(n).AbsolutePath,f.absolutePath+dialogOpen.Item(n).name)
		    
		    'dialogOpen.Item(n).Delete
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportErrors(Operation as string, rtn as integer, functionName as string)
		  MsgBox("Error " + str(rtn)+ " in "+ operation + " in function " + functionName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringToHex(ltext as string) As string
		  dim hexString as string 
		  dim i as integer
		  
		  hexString = ""
		  
		  for i = 1 to len(lText)
		    if len(hex(asc(mid(lText,i,1))))=1 then
		      hexString=hexString+ "0"+hex(asc(mid(lText,i,1)))+ " "
		    else
		      hexString = hexString + hex(asc(mid(lText,i,1)))+ " "
		    end if
		  next
		  
		  return hexString
		  
		  Exception
		    MsgBox( "Error in String to Hex" )
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TypeOfException(err as runtimeexception) As string
		  // Returns a text string indicating the type of RuntimeException passed in.
		  dim result as string
		  
		  if err isA IllegalCastException then
		    result = "IllegalCastException"
		  elseif err isA KeyNotFoundException then
		    result = "KeyNotFoundException"
		  elseif err isA OutOfBoundsException then
		    result = "OutOfBoundsException"
		  elseif err isA OutOfMemoryException then
		    result = "OutOfMemoryException"
		  elseif err isA RbScriptAlreadyRunningException then
		    result = "RbScriptAlreadyRunningException"
		  elseif err isA RbScriptException then
		    result = "RbScriptException"
		  elseif err isA RegExException then
		    result = "RegExException"
		  elseif err isA ShellNotAvailableException then
		    result = "ShellNotAvailableException"
		  elseif err isA ShellNotRunningException then
		    result = "ShellNotRunningException"
		  elseif err isA StackOverflowException then
		    result = "StackOverflowException"
		  elseif err isA TypeMismatchException then
		    result = "TypeMismatchException"
		  elseif err isA UnsupportedFormatException then
		    result = "UnsupportedFormatException"
		  elseif err isA NoOpenTransportException then
		    result = "NoOpenTransportException"
		  elseif err isA InvalidParentException then
		    result = "InvalidParentException"
		  elseif err isA EndException then
		    result = "EndException"
		  elseif err isA NilObjectException then
		    result = "NilObjectException"
		    ' uncomment these lines if you are using the Office Automation plug-ins
		    ' elseif err isA WordException then
		    ' result = "WordException"
		    ' elseif err isA ExcelException then
		    ' result = "ExcelException"
		    ' elseif err isA PowerPointException then
		    ' result = "PowerPointException"
		    
		  end if
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteTextFile(text as string, filename as string)
		  Dim OutputFile as FolderItem
		  Dim OutputStream as TextOutputStream
		  
		  functionName="WriteTextFile"
		  
		  OutputFile = GetFolderItem( filename)
		  if outputfile<>Nil then 
		    OutputStream= OutputFile.CreateTextFile
		    OutputStream.WriteLine text
		    OutputStream.close
		  else
		    msgbox("problem with outputfile")
		  end if 
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		autoRunAtStart As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Beat As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentLSB As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentMSB As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		elapsedTime As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		fileReader As String
	#tag EndProperty

	#tag Property, Flags = &h0
		functionName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		HPid As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Hpid2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		InitialFileDirectory As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		input As MyWindowsMidiInputMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		InputPort As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		IsStarted As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		MBT As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Measure As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		pdfWorkingFiles As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		PPQN As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		processedMidisFolder As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		StartTime As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		targetBook As collection
	#tag EndProperty

	#tag Property, Flags = &h0
		Tempo As single
	#tag EndProperty

	#tag Property, Flags = &h0
		tempoFactor As double
	#tag EndProperty

	#tag Property, Flags = &h0
		ticksLeft As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TicksPerBeat As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ticksPerMeasure As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputPort"
			Visible=false
			Group="Behavior"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartTime"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="elapsedTime"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsStarted"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tempo"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ticksPerMeasure"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TicksPerBeat"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PPQN"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="functionName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Measure"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beat"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ticksLeft"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MBT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tempoFactor"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentMSB"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentLSB"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HPid"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hpid2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fileReader"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="autoRunAtStart"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
