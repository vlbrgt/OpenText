#tag Class
Protected Class MyWindowsMidiInputMBS
Inherits WindowsMidiInputMBS
	#tag Event
		Sub DeviceClose()
		  'list.AddRow " "
		  'list.cell(list.LastIndex,2)="Paused"
		End Sub
	#tag EndEvent

	#tag Event
		Sub DeviceData(timestamp as integer, status as integer, data1 as integer, data2 as integer, RawData as integer)
		  ' OpenText
		  ' (c) Michael P. Bedesem and Etienne Volbragt
		  ' 
		  
		  Dim midiCmd As Integer
		  Dim channel As Integer
		  Dim midiEvent As String
		  
		  Select Case hex(status)
		    
		  Case "FE"
		    
		  Case Else
		    
		    //If startTime = 0 Then
		    //startTime = timestamp
		    //End If
		    
		    midiCmd = status
		    channel = midiCmd - ((floor(midiCmd / 16)) * 16) + 1
		    midiEvent = getmidiEvent(midiCmd, channel, data1, data2)
		    
		  End Select
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub DeviceError(timestamp as integer, status as integer, data1 as integer, data2 as integer, RawData as integer)
		  'list.AddRow "Input: Error "+hex(status)+" "+hex(data1)+" "+hex(data2)+" "+hex(timestamp)
		End Sub
	#tag EndEvent

	#tag Event
		Sub DeviceLongData(timestamp as integer, data as string, dataMemory as memoryblock)
		  'dim r()  as integer
		  'dim i as integer
		  'dim x as integer
		  'dim MidiCommand as string=data
		  'dim midiCmd as integer
		  'dim key  as string
		  'dim mode as string
		  'dim sysexString As  string
		  'dim s as string
		  '
		  'Dim tem2 As integer  ' if solve end of treack, then these can be eliminated
		  'Dim tem3 As integer   '
		  'Dim tem4 As integer '
		  'Dim rawTempo As single
		  'dim commandType as string
		  'dim t as integer
		  'Dim beat As Integer    '
		  'dim cmd as string ' ok
		  'dim eventTime as integer
		  'x= len(data)-1
		  'redim r(x)
		  '
		  'for i = 0 to x
		  'r(i)=asc(midB(data, i+1,1))
		  'next 
		  '
		  '
		  '
		  'If startTime = 0 Then
		  'startTime =timestamp
		  'end if
		  '
		  '
		  'eventTime = timestamp- startTime
		  'elapsedTime=eventTime*tempoFactor
		  '
		  'measure = floor(elapsedTime / ticksPerMeasure)
		  'beat = floor(((elapsedTime - (measure * ticksPerMeasure))* 1 / ticksPerBeat))
		  'ticksLeft=elapsedtime-(measure* ticksPerMeasure)-(beat*ticksPerBeat)
		  'MBT= str(Measure+1)+":"+ str(Beat+1)+":" +str(ticksleft)
		  '
		  'midiCmd= r(0)
		  'Select Case midiCmd                           'r(n)
		  'Case 255
		  'commandType = "Metadata"
		  'Select Case r( 1)
		  'Case 6
		  '
		  'MidiCommand = "MARKER:" '+ tdata
		  'Case 2
		  '
		  'MidiCommand = "Copyright: "' + tdata
		  'Case 3
		  '
		  'MidiCommand = "StyleName: " '+ tdata
		  'Case 9
		  '
		  'MidiCommand = "MidiPort: " '+ tdata
		  'Case 0
		  'MidiCommand = "Sequence Number: " + Str(256 * r(2) + r(3))
		  'Case 89
		  '
		  'Select Case    r(2)
		  'Case 249
		  ' key = "Cb/G#m"
		  'Case 250
		  ' key = "Gb/D#m"
		  'Case 251
		  ' key = "Db/Bm"
		  'Case 252
		  ' key = "Ab/Fm"
		  'Case 253
		  ' key = "Eb/Cm"
		  'Case 254
		  ' key = "Bb/Gm"
		  'Case 255
		  ' key = "F/Dm"
		  'Case 0
		  '  key = "C/Am"
		  'Case 1
		  ' key = "G/Em"
		  'Case 2
		  ' key = "D/Bm"
		  'Case 3
		  ' key = "A/F#m"
		  'Case 4
		  ' key = "E/C#m"
		  'Case 5
		  ' key = "B/G#m"
		  'Case 6
		  ' key = "F#/D#m"
		  'Case 7
		  ' key = "G#"
		  'Case Else
		  ' key =" "
		  'End Select
		  'Select Case r(3)
		  'Case 0
		  ' mode = "major"
		  'Case 1
		  ' mode = "minor"
		  'End Select
		  'MidiCommand = "Key Signature: " + key + mode
		  'Case 1
		  '
		  'MidiCommand = "Text Event: "' + tdata
		  'Case 4
		  '
		  'MidiCommand = "Track Instrument Name: " '+ tdata
		  'Case 5
		  '
		  'MidiCommand = "Lyric: " '+ tdata
		  'Case 7
		  '
		  'MidiCommand = "Cue Point: " '+ tdata
		  'Case 127
		  'MidiCommand = "YamahaSequencerInfo"'(i)
		  '
		  'Case 32
		  'MidiCommand = "Midi Channel Prefix: " '+ Str(r(n + 2))
		  'Case 33
		  'MidiCommand = "MidiPort: " + Str(r( 2))
		  'Case 81 '
		  'tem2 = (r(2))
		  ' tem3 = r(3)
		  'tem4 = tem2 * 65536 + tem3 * 256 + r(4)
		  'rawTempo = 60000000 / tem4
		  'If beat <> 0 Then
		  'tempo = rawTempo * beat / 4
		  'Else
		  'tempo = rawTempo
		  'End If
		  'MidiCommand = "Tempo: " + Str(floor(tempo))
		  'Case 84
		  'MidiCommand = "SMPTE Offset"
		  'Case 88
		  '
		  '
		  'MidiCommand = "Time Signature: "' + Str(r(2)) + "/" + Str(beat)
		  '
		  'Case 47
		  'MidiCommand = "End of Track"
		  '
		  'Case Else
		  'midiCommand="Unknown meta event"
		  '
		  'End Select
		  '
		  '
		  'Case 240                               ' sysex event
		  'commandType = "Sysex"
		  'sysexString=mid(EncodingToHexMBS(data), 3) 
		  'for i= 1 to len(sysexString)-1 step 2
		  's=s + Mid(sysexString, i, 2) + " "
		  'next
		  '
		  '
		  'MidiCommand =(s)
		  '
		  'end select
		  '
		  '
		  '
		  '
		  'list.AddRow Str(eventTime)
		  'list.cell(list.LastIndex,1)=MBT
		  'list.cell(list.LastIndex,2)= s   'EncodingToHexMBS(data)
		  'list.cell(list.LastIndex,4)=commandType
		  'list.cell(list.LastIndex,5)=midiCommand
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub DeviceLongError(timestamp as integer, data as string, dataMemory as memoryblock)
		  'list.AddRow "Input: Long Error "+hex(timestamp)+" "+EncodingToHexMBS(data)
		End Sub
	#tag EndEvent

	#tag Event
		Sub DeviceOpen()
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		list As listbox
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
			InitialValue=""
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
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
