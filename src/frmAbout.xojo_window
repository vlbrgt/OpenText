#tag Window
Begin Window frmAbout
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   336
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   False
   Title           =   ""
   Visible         =   True
   Width           =   499
   Begin Label MajorVersion
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   128
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   146
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Text\r\nText\r\nText\r\nText\r\nText\r\nText\r\nText\r\nText"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   45
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   333
   End
   Begin Separator Separator1
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   1
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   138
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   247
      Transparent     =   True
      Visible         =   True
      Width           =   343
   End
   Begin Label lblAcceptance
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   33
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   172
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Text\r\nText"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   255
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   280
   End
   Begin PushButton pbOk
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   332
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   294
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label lblTitle
      AllowAutoDeactivate=   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   14.0
      FontUnit        =   0
      Height          =   27
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   172
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Open Text"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   8
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   280
   End
   Begin Canvas Canvas1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   1643862015
      DoubleBuffer    =   False
      Enabled         =   False
      Height          =   300
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   4
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   16
      Transparent     =   True
      Visible         =   True
      Width           =   130
   End
   Begin PushButton pbUsersAgreement
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "User's Agreement"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   186
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   294
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin Label lblUsersAgreement
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   332
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   True
      Left            =   4
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   340
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   489
   End
   Begin LinkLabel lblEmail
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   14.0
      FontUnit        =   0
      Height          =   29
      HighLightColor  =   &cFF000000
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   220
      LinkColor       =   &c0000FF00
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "E-mail : volbragte@telenet.be"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   184
      Transparent     =   False
      Underline       =   False
      UnderlineLink   =   True
      URL             =   "mailto:volbragte@telenet.be"
      Visible         =   True
      Width           =   192
   End
   Begin LinkLabel lblWebsite
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   14.0
      FontUnit        =   0
      Height          =   29
      HighLightColor  =   &cFF000000
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   169
      LinkColor       =   &c0000FF00
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "http://www.PsrTutorial.com/MB/volbragt.html"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   213
      Transparent     =   False
      Underline       =   False
      UnderlineLink   =   True
      URL             =   "http://www.Psrtutorial.com/MB/volbragt.html"
      Visible         =   True
      Width           =   293
   End
End
#tag EndWindow

#tag WindowCode
	#tag Property, Flags = &h21
		Private userAgreementClicked As Boolean
	#tag EndProperty


	#tag Constant, Name = kAcceptance, Type = String, Dynamic = False, Default = \"This software is conditional upon the acceptance of the terms and conditions of the User\'s Agreement. ", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kEmail, Type = String, Dynamic = False, Default = \"mailto:volbragte@telenet.be", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kURLWebsite, Type = String, Dynamic = False, Default = \"http://www.Psrtutorial.com/MB/volbragt.html", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUsersAgreement, Type = String, Dynamic = False, Default = \"By installing this software\x2C the user signifies agreement with the following: \rThe author copyrights this software with all rights reserved. The author retains all title and intellectual property rights. \rNo warranty is made regarding the suitability of this software for any application\x2C or that operation will be uninterrupted\x2C or error free.\rThe author is not responsible for problems that result from installing or operating this software\x2C and shall in no case be liable for special\x2C incidental\x2C consequential\x2C indirect or similar damages arising howsoever. \rThe user agrees not to make changes or modifications to the software and not to decompile\x2C disassemble\x2C or otherwise reverse engineer the software. \rThe software is provided free for private\x2C non-commercial use. The user agrees not to sell this software or bundle it with other software for commercial enterprise\x2C without the express written consent of the author. \rThe software may be distributed to other users as provided above as long as all components\x2C including this agreement\x2C are included. \rThe user is responsible for using this software legally and in accordance with any copyrights that may pertain to third party style files. \rThis agreement constitutes the entire agreement between the author and the user. It may amended from time to time by the authors. If the user does not agree to abide any amendments\x2C the user will be expected to discontinue use of the software ", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events MajorVersion
	#tag Event
		Sub Open()
		  Var d As New date
		  Var NonRel As String
		  Var xojoVersion As String = "Build with XOJO version : " + XojoVersionString + EndOfLine
		  Var copyYear As String = "(c)" + " " + app.kCompanyName + " " + "2008-" + Str(d.Year) + EndOfLine
		  Var copyright As String = app.Copyright + EndOfLine
		  Var MBSVersion As String = "MBS Plugin version : " + MBS.VersionString + EndOfLine
		  Var HPMidifile As String = HP_GetVersion + " : (c) Heiko Plate" + EndOfLine
		  Var manual As String  = "Manual by Etienne Volbragt"
		  Var basedOn As String = "Based on work by Michael P. Bedesem" + EndOfLine + EndOfLine
		  
		  If Str(app.NonReleaseVersion) <> "0" Then
		    NonRel = "Beta Version  " + Str(app.NonReleaseVersion)
		  End If
		  
		  frmAbout.Top = frmOpenText.Top + 100
		  frmAbout.Left = frmOpenText.Left + (frmOpenText.Width - frmAbout.width) / 2
		  
		  MajorVersion.Text = copyYear + copyright + basedOn + xojoVersion + MBSVersion + HPMidiFile + manual
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblAcceptance
	#tag Event
		Sub Open()
		  Me.Text = kAcceptance
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbOk
	#tag Event
		Sub Action()
		  frmAbout.close
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblTitle
	#tag Event
		Sub Open()
		  Me.Text = App.OpenTextVersion
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbUsersAgreement
	#tag Event
		Sub Action()
		  If userAgreementClicked = True Then
		    userAgreementClicked = False
		  Else
		    userAgreementClicked = True
		  End If
		  
		  If userAgreementClicked Then
		    frmAbout.Height = 650
		  Else
		    frmAbout.Height = 336
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblUsersAgreement
	#tag Event
		Sub Open()
		  lblUsersAgreement.Text = kUsersAgreement
		  pbUsersAgreement.SetFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblEmail
	#tag Event
		Sub Opening()
		  Me.URL = kEMail
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblWebsite
	#tag Event
		Sub Opening()
		  Me.URL = kURLWebsite
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
