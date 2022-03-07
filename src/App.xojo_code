#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  Call RegisterPlugins
		  
		  OTDataFolder = SpecialFolder.ApplicationData.Child(kCompanyName).Child("OpenText")
		  OTInstallFolder = GetAppFolder
		  OTDocumentsFolder = SpecialFolder.Documents.Child(kCompanyName).Child("OpenText")
		  
		  Select Case App.BugVersion
		  Case 0
		    '# Show Release version
		    OpenTextVersion = "Open Text" + " v" + Str(App.MajorVersion) + "r" + Str(App.MinorVersion)
		  Case Is > 0
		    '# Show Pre Release Version
		    OpenTextVersion = "Open Text" + " v" + Str(App.MajorVersion) + "r" + Str(App.MinorVersion) + "." + Str(App.BugVersion)
		  End Select
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  ' OpenText
		  ' (c) Michael P. Bedesem and Etienne Volbragt
		  ' 
		  ' If unhandled exception then close the input and free midi handles
		  
		  input.close
		  If HPid > 0 Then
		    Call HpFree(HPid)
		    Hpid = 0
		  End If
		  If HPid2 > 0 Then
		    Call HpFree(HPid2)
		    Hpid2 = 0
		  End If
		End Function
	#tag EndEvent


	#tag Property, Flags = &h0
		OpenTextVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OTDataFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		OTDocumentsFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		OTInstallFolder As FolderItem
	#tag EndProperty


	#tag Constant, Name = kAuthorName, Type = String, Dynamic = False, Default = \"Michael P. Bedesem and Etienne Volbragt", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"VoEtSoft"
	#tag EndConstant

	#tag Constant, Name = kCompanyName, Type = String, Dynamic = False, Default = \"VoEtSoft", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"VoEtSoft"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="OpenTextVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
