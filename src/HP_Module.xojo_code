#tag Module
Protected Module HP_Module
	#tag Method, Flags = &h0
		Function GetDevCaps(i1 as integer,byRef l as MIDIOUTCAPS,i2 as integer) As integer
		  dim rtn as integer
		  #if TargetWin32
		    
		    Declare Function midiOutGetDevCaps Lib "WINMM.DLL" Alias "midiOutGetDevCapsA" ( uDeviceID As Integer, ByRef lpCaps As MIDIOUTCAPS, uSize As Integer ) As Integer
		    
		    
		    rtn=midiOutGetDevCaps( i1, l, i2 )
		    Return rtn
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetEventTextFromCodes(i as int32) As string
		  dim rtn as string
		  dim eventTypeText as string
		  
		  Select case str(hex(i))
		  case "0101"
		    eventTypeText= "HP_SEQUENCE_NUMBER"
		  case "0201"
		    eventTypeText="HP_TEXT"
		  case "0301"
		    eventTypeText="HP_COPYRIGHT"
		  case "0401"
		    eventTypeText= "HP_SONG_TRACK_NAME"
		  case "0501"
		    eventTypeText="HP_INSTRUMENT"
		  case "0601"
		    eventTypeText="HP_LYRIC"
		  case "0701"
		    eventTypeText="HP_MARKER"
		  case "0801"
		    eventTypeText= "HP_CUE_POINT"
		  case "0901"
		    eventTypeText="HP_CHANNEL_PREFIX"
		  case "0A01"
		    eventTypeText= "HP_MIDI_PORT"
		  case "0B01"
		    eventTypeText= "HP_END_OF_TRACK"
		  case "0C01"
		    eventTypeText="HP_TEMPO"
		  case "0D01"
		    eventTypeText="HP_SMPTE_OFFSET"
		  case "0E01"
		    eventTypeText="HP_TIME_SIGNATURE"
		  case "07F01"
		    eventTypeText= "HP_KEY_SIGNATURE"
		  case "FE01"
		    eventTypeText= "HP_OTHER_META"
		    
		    
		  end Select
		  rtn = eventTypeText
		  
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNumDevs() As Integer
		  dim rtn as integer
		  
		  Declare Function midiOutGetNumDevs Lib "winmm" () As Integer
		  rtn= midiOutGetNumDevs(  )
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeAftertouch(i as integer, i2 as integer, i3 as integer, i4 as integer, b as boolean) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeAftertouch Lib "HP_midifile.dll" Alias "?HP_ChangeAftertouch@@YAIPAVMIDIFile@@HHH_N@Z" (hp as integer, lid as integer ,lnote as integer,lvalue as integer, lpercent as boolean ) as Integer
		    rtn= HP_ChangeAftertouch(i,i2,i3,i4,b)//HP_ChangeAftertouch(mf,id,note#, value,percent);
		    
		  #endif
		  return rtn
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeChannel(i as integer, i2 as integer) As integer
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_ChangeChannel Lib "HP_midifile.dll" Alias "?HP_ChangeChannel@@YAIPAVMIDIFile@@H@Z" (hp as integer, NewChannel as integer) as Integer
		    rtn= HP_ChangeChannel(i,i2)//  HP_ChangeChannel(Hpid,newChan)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPChangeChannelInBuffer(i as integer) As integer
		  dim rtn as integer
		  #if TargetWin32
		    Declare Function HP_ChangeChannelInBuffer Lib "HP_midifile.dll" Alias "?HP_ChangeChannelInBuffer@@YAXH@Z" (newchan As Integer) As Integer
		    call HP_ChangeChannelInBuffer(i)
		  #endif
		  
		  Return rtn
		  
		  'Lib "HP_midifile.dll" Alias "?HP_ChangeChannelInBuffer@@YAXH@Z"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeChannelPressure(i as integer,i2 as integer,i3  as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeChannelPressure Lib "HP_midifile.dll" Alias "?HP_ChangeChannelPressure@@YAIPAVMIDIFile@@HH@Z" (hp as integer, lid as integer ,lvalue as integer) as Integer
		    rtn= HP_ChangeChannelPressure(i,i2,i3)//HP_ChangeChannelPressure(mf,id, value);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeChord(i as integer,i2 as integer, cr as byte,ct as byte,br as byte,bt as byte) As integer
		  dim result as integer
		  
		  
		  Declare Function HP_ChangeChord Lib "HP_midifile.dll" Alias "?HP_ChangeChord@@YAIPAVMIDIFile@@HEEEE@Z" (hpHandle as integer, idofevent as integer, lcr as byte,   lct as byte,  lbr as byte,  lbt as byte  ) as Integer
		  result=HP_ChangeChord(i,i2,cr,ct,br,bt)//HP_ChangeChord(mf,id,chordRoot,ChordType,BassRoot,BassType)
		  
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeChord1(i as integer,i2 as integer, cr as CString,ct as CString,br as CString,bt as CString) As integer
		  dim result as integer
		  
		  
		  Declare Function HP_ChangeChord Lib "HP_midifile.dll" Alias "?HP_ChangeChord@@YAIPAVMIDIFile@@HEEEE@Z" (hpHandle as integer, idofevent as integer, lcr as CString,   lct as CString,  lbr as CString,  lbt as CString  ) as Integer
		  result=HP_ChangeChord(i,i2,cr,ct,br,bt)//HP_ChangeChord(mf,id,chordRoot,ChordType,BassRoot,BassType)
		  
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeController(i as integer,i2 as integer,i3 as UInt32,i4 as integer , b as boolean) As Integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeController Lib "HP_midifile.dll" Alias "?HP_ChangeController@@YAIPAVMIDIFile@@HIH_N@Z" (hp as integer, lid as integer ,ltype as UInt32,lvalue as integer, lpercent as boolean ) as Integer
		    rtn= HP_ChangeController(i,i2,i3,i4,b)//HP_ChangeController(mf,id,type, value,percent);
		    
		  #endif
		  return rtn
		  
		  '?HP_ChangeController@@YAIPAVMIDIFile@@HIH_N@Z
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeControllerSelected(i as integer, i2 as UInt32, i3 as integer, i4 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeControllerSelected Lib "HP_midifile.dll" Alias "?HP_ChangeControllerSelected@@YAIPAVMIDIFile@@IH_N@Z" (hp as integer, type as UInt32 ,value as integer, lpercent as integer ) as Integer
		    rtn= HP_ChangeControllerSelected(i,i2,i3,i4)//HP_ChangeControllerSelected(mf,type,value, percent);
		    
		  #endif
		  return rtn
		  
		  'Lib "HP_midifile.dll" Alias "?HP_ChangeControllerSelected@@YAIPAVMIDIFile@@IH_N@Z"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeCopyright(i as integer, i2 as integer, s as CString) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeCopyright Lib "HP_midifile.dll" Alias "?HP_ChangeCopyright@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, lId as integer , txt as CString ) as Integer
		    rtn= HP_ChangeCopyright(i,i2,s)//HP_ChangeCopyright(mf,id,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeCuePoint(i as integer, i2 as integer, s as CString) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeCuePoint Lib "HP_midifile.dll" Alias "?HP_ChangeCuePoint@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, lId as integer , txt as CString ) as Integer
		    rtn= HP_ChangeCuePoint(i,i2,s)//HP_ChangeCuePoint(mf,id,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeInstrument(i as integer, i2 as integer, s as CString) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeInstrument Lib "HP_midifile.dll" Alias "?HP_ChangeInstrument@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, lId as integer , txt as CString ) as Integer
		    rtn= HP_ChangeInstrument(i,i2,s)//HP_ChangeInstrument(mf,id,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeKeySignature(i as integer, i2 as integer, s as CString) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeKeySignature Lib "HP_midifile.dll" Alias "?HP_ChangeKeySignature@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, lId as integer , txt as CString ) as Integer
		    rtn= HP_ChangeKeySignature(i,i2,s)//HP_ChangeKeySignature(mf,id,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeLyric(i as integer, i2 as integer, s as Cstring) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeLyric Lib "HP_midifile.dll" Alias "?HP_ChangeLyric@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, lId as integer , txt as CString ) as Integer
		    rtn= HP_ChangeLyric(i,i2,s)//HP_ChangeLyric(mf,id,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeMarker(i as integer, i2 as integer, s as CString) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeMarker Lib "HP_midifile.dll" Alias "?HP_ChangeMarker@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, lId as integer , txt as CString ) as Integer
		    rtn= HP_ChangeMarker(i,i2,s)//HP_ChangeMarker(mf,id,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeMidiPort(i as integer, i2 as UInt32, i3 as integer, i4 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeMidiPort Lib "HP_midifile.dll" Alias "?HP_ChangeMidiPort@@YAIPAVMIDIFile@@HHH@Z" (hp as integer, lid as UInt32 ,ltrack as integer, llport as integer ) as Integer
		    rtn= HP_ChangeMidiPort(i,i2,i3,i4)//HP_ChangeMidiPort(mf,id,track, port);
		    
		  #endif
		  return rtn
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeNote(i as integer, i2 as integer, i3 as integer, i4 as integer, b as Boolean) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeNote Lib "HP_midifile.dll" Alias "?HP_ChangeNote@@YAIPAVMIDIFile@@HHH_N@Z" (hp as integer, ld as integer ,chan as UInt32,note as integer, absolute as boolean ) as Integer
		    rtn= HP_ChangeNote(i,i2,i3,i4,b)//HP_ChangeNote(mf,id,chan, note value,HP_ABSOLUTE);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeNoteLength(i as integer, i2 as integer, i3 as integer, i4 as integer, i5 as integer, b as boolean) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeNoteLength Lib "HP_midifile.dll" Alias "?HP_ChangeNoteLength@@YAIPAVMIDIFile@@HHHH_N@Z"(hp as integer, id as integer ,chan as UInt32,note as integer, velocity as integer, percent as boolean ) as Integer
		    rtn= HP_ChangeNoteLength(i,i2,i3,i4,i5,b)//HP_ChangeNoteLength(mf,id,chan, note,length, HP_NO_PERCENT);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangePitchWheel(i as integer,i2 as integer,i3  as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangePitchWheel Lib "HP_midifile.dll" Alias "?HP_ChangePitchWheel@@YAIPAVMIDIFile@@HH@Z" (hp as integer, lid as integer ,lvalue as integer) as Integer
		    rtn= HP_ChangePitchWheel(i,i2,i3)//HP_ChangePitchWheel(mf,id, value);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangePPQN(i as integer, i2 as integer) As integer
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_ChangePPQN Lib "HP_midifile.dll" Alias "?HP_ChangePPQN@@YAIPAVMIDIFile@@H@Z" (hp as integer, NewppqnNumber as integer) as Integer
		    rtn= HP_ChangePPQN(i,i2)//  HP_ChangePPQN(Hpid,newPPQN)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeProgram(i as integer, i2 as integer, i3 as integer) As integer
		  
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeProgram Lib "HP_midifile.dll" Alias "?HP_ChangeProgram@@YAIPAVMIDIFile@@HH@Z"(hp as integer, id as integer ,newnumbr as integer ) as Integer
		    rtn= HP_ChangeProgram(i,i2,i3)//HP_ChangeProgram(mf,id,number);
		    
		  #endif
		  return rtn
		  
		  'Lib "HP_midifile.dll" Alias "?HP_ChangeProgram@@YAIPAVMIDIFile@@HH@Z"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeSongTrackName(i as integer, i2 as integer, s as CString) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeSongTrackName Lib "HP_midifile.dll" Alias "?HP_ChangeSongTrackName@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, lId as integer , txt as CString ) as Integer
		    rtn= HP_ChangeSongTrackName(i,i2,s)//HP_ChangeSongTrackName(mf,id,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeSysex(i as integer, i2 as integer, s as Cstring) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeSysex Lib "HP_midifile.dll" Alias "?HP_ChangeSysex@@YAIPAVMIDIFile@@HPAE@Z" (hp as integer, ID1 as integer , txt as CString ) as Integer
		    rtn= HP_ChangeSysex(i,i2,s)//HP_ChangeSysex(mf,ID,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeTempo(i as integer,i2 as integer, i3 as integer,b as boolean) As Integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeTempo Lib "HP_midifile.dll" Alias "?HP_ChangeTempo@@YAIPAVMIDIFile@@HH_N@Z" (hp as integer, lid as integer ,lvalue as integer, lpercent as boolean ) as Integer
		    rtn= HP_ChangeTempo(i,i2,i3,b)//HP_ChangeTempo(mf,id, value,percent);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeText(i as integer, i2 as integer, s as CString) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeText Lib "HP_midifile.dll" Alias "?HP_ChangeText@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, lId as integer , txt as CString ) as Integer
		    rtn= HP_ChangeText(i,i2,s)//HP_ChangeText(mf,id,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeTimeSignature(i as integer, i2 as integer, i3 as integer, i4 as integer, i5 as integer,i6 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeTimeSignature Lib "HP_midifile.dll" Alias "?HP_ChangeTimeSignature@@YAIPAVMIDIFile@@HHHHH@Z"(hp as integer, id as integer ,lnum as integer,ldenom as integer, lmet as integer, ln32 as integer ) as Integer
		    rtn= HP_ChangeTimeSignature(i,i2,i3,i4,i5,i6)//HP_ChangeTimeSignature(i,i2,eventTime,numerator,denominator,metClicksPerQtrNote,ThirtySecondNotesPerQtr);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeVelocity(i as integer, i2 as integer, i3 as integer, i4 as integer, i5 as integer,b as Boolean) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeVelocity Lib "HP_midifile.dll" Alias "?HP_ChangeVelocity@@YAIPAVMIDIFile@@HHHH_N@Z" (hp as integer, id as integer ,chan as UInt32,note as integer, velocity as integer, percent as boolean ) as Integer
		    rtn= HP_ChangeVelocity(i,i2,i3,i4,i5,b)//HP_ChangeVelocity(mf,id,chan, note,velocity, HP_NO_PERCENT);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpChangeVelocitySelected(i as integer,i2 as integer,b  as boolean) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ChangeVelocitySelected Lib "HP_midifile.dll" Alias "?HP_ChangeVelocitySelected@@YAIPAVMIDIFile@@H_N@Z" (hp as integer, lvalue as integer ,lpercent as boolean) as Integer
		    rtn= HP_ChangeVelocitySelected(i,i2,b)//HP_ChangeVelocitySelected(mf,value, percent);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpCopy(i as integer) As integer
		  dim rtn as integer
		  #if TargetWin32
		    Declare Function HP_Copy Lib "HP_midifile.dll" Alias "?HP_Copy@@YAIPAVMIDIFile@@@Z" (hp As Integer) As Integer
		    rtn= HP_Copy(i)//HP_Copy (HPid)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HpDelete(s as CString)
		  
		  #if TargetWin32
		    Declare Function HP_Delete Lib "HP_midifile.dll" Alias "?HP_Delete@@YAXPAX@Z" (s2 as Cstring) as Integer
		    call HP_Delete(s)
		  #endif
		  
		  Return 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpDeleteEvent(i as integer, i2 as integer) As integer
		  dim rtn as integer
		  #if TargetWin32
		    Declare Function HP_DeleteEvent Lib "HP_midifile.dll" Alias "?HP_DeleteEvent@@YAIPAVMIDIFile@@H@Z" (lhpid as integer, lID As Integer) As Integer
		    rtn= HP_DeleteEvent(i,i2)//HP_DeleteEvent(HPid,eventID)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpDeleteShortNotesSelected(i as integer, i2 as integer) As integer
		  dim rtn as integer
		  #if TargetWin32
		    Declare Function HP_DeleteShortNotesSelected Lib "HP_midifile.dll" Alias "?HP_DeleteShortNotesSelected@@YAIPAVMIDIFile@@H@Z" (lhpid as integer, lID As Integer) As Integer
		    rtn= HP_DeleteShortNotesSelected(i,i2)//HP_DeleteShortNotesSelected(HPid,length)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpDeselect(i as integer, i2 as integer) As integer
		  dim rtn  as integer
		  #if TargetWin32
		    Declare Function HP_Deselect Lib "HP_midifile.dll" Alias "?HP_Deselect@@YAIPAVMIDIFile@@H@Z" (hp as integer, idofEvents as integer) as Integer
		    call HP_Deselect(i,i2)//HP_Deselect(HPid,event id or HP_ALL_EVENTS)
		  #endif
		  
		  Return rtn
		  
		  'Lib "HP_midifile.dll" Alias "?HP_Deselect@@YAIPAVMIDIFile@@H@Z"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpDeselectChannel(i as integer,i2 as integer) As integer
		  dim rtn  as integer
		  #if TargetWin32
		    Declare Function HP_DeselectChannel Lib "HP_midifile.dll" Alias "?HP_DeselectChan@@YAIPAVMIDIFile@@H@Z" (hp as integer, chan as integer) as Integer
		    call HP_DeselectChannel(i,i2)//HP_Deselect(HPid,channel)
		  #endif
		  
		  Return rtn
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpDuration(i as integer, i2 as integer) As integer
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_Duration Lib "HP_midifile.dll" Alias "?HP_Duration@@YAJPAVMIDIFile@@H@Z" (LID as integer,LMode as integer) as Integer
		    rtn= HP_Duration(i, i2)//HP_Duration(ID, HP_ALL or HP_SELECTED)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpFree(i As integer) As integer
		  dim rtn as integer
		  #if TargetWin32
		    Declare Function HP_Free Lib "HP_midifile.dll" Alias "?HP_Free@@YAIPAVMIDIFile@@@Z" (i2 As Integer) As Integer
		    rtn= HP_Free(i)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpGetDevices(ByRef l As HP_device, ByRef no_devices As integer) As Integer
		  dim rtn as integer
		  Declare Function HP_GetMIDIDevices Lib "HP_midifile.dll" Alias "?HP_GetMIDIDevices@@YAIPAPAUHP_device@@PAH@Z" ( ByRef lpCaps As HP_device, ByRef uSize As integer ) As Integer
		  
		  rtn=HP_GetMIDIDevices(l,no_devices)
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpGetLastTime(i as integer) As integer
		  
		  
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_GetLastTime Lib "HP_midifile.dll" Alias "?HP_GetLastTime@@YAIPAVMIDIFile@@PAH@Z" (hp as integer, byRef ppqnNumber as integer) as Integer
		    rtn= HP_GetLastTime(i, lastTime)//
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpGetTaktBeatTick(i as integer, i2 as integer) As integer
		  Dim rtn as Integer
		  #if TargetWin32
		    'Declare Function HP_GetTaktBeatTick Lib "HP_midifile.dll" Alias "?HP_GetTaktBeatTick@@YAIPAVMIDIFile@@HHHHHPAH11@Z" (hp as integer,ltime as integer, byRef lmeasure  as integer, byRef lbeat  as integer, byRef ltick  as integer) as Integer
		    
		    Declare Function HP_GetTaktBeatTick Lib "HP_midifile.dll" Alias "?HP_GetTaktBeatTick@@YAIPAVMIDIFile@@HPAH11@Z" (hp as integer,ltime as integer, byRef lmeasure  as integer, byRef lbeat  as integer, byRef ltick  as integer) as Integer
		    rtn= HP_GetTaktBeatTick(i,i2, measure,beat,tick)//HP_GetTaktBeatTick(mf,time,&measure,&beat,&tick)
		    if rtn<> 0 then MsgBox( "Error in HpGetTakt etc") ' error
		    
		    
		    
		    
		  #endif
		  
		  Return rtn
		  
		  
		  Exception
		    MsgBox( "Error in HpGetTakt etc") 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpGetTimeFromTaktBeatTick(i as integer,i2 as integer,i3 as integer,i4 as integer) As integer
		  dim rtn as integer
		  
		  
		  
		  
		  
		  #if TargetWin32
		    Declare Function HP_GetTimeFromTaktBeatTick Lib "HP_midifile.dll" Alias "?HP_GetTimeFromTaktBeatTick@@YAIPAVMIDIFile@@HHHPAH@Z" (hp as integer, lmeasure as integer, lBeat as integer, lTicks as integer, byRef z as integer ) as Integer
		    rtn= HP_GetTimeFromTaktBeatTick(i,i2,i3,i4, timeStamp)'HP_GetTimeFromTaktBeatTick(hpid,measure,beat,ticks,&timestamp);
		    Return rtn
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInit() As integer
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_Init Lib "HP_midifile.dll" Alias "?HP_Init@@YAPAVMIDIFile@@XZ" () as Integer
		    rtn= HP_Init
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertAftertouch(i as integer, i2 as integer, i3 as integer, i4 as integer, i5 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertAftertouch Lib "HP_midifile.dll" Alias "?HP_InsertAftertouch@@YAIPAVMIDIFile@@HHHH@Z" (hp as integer, time1 as integer , chan as integer, lnote as integer,  value as integer ) as Integer
		    rtn= HP_InsertAftertouch(i,i2,i3,i4,i5)//HP_InsertAftertouch(mf,time,chan,note#,pressure);
		    
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertChannelPressure(i as integer, i2 as integer, i3 as integer, i4 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertChannelPressure Lib "HP_midifile.dll" Alias "?HP_InsertChannelPressure@@YAIPAVMIDIFile@@HHH@Z" (hp as integer, time1 as integer , lchan as integer, lvalue as integer ) as Integer
		    rtn= HP_InsertChannelPressure(i,i2,i3,i4)//HP_InsertChannelPressure(mf,time,chan,value);
		    
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertChord(i as integer,i2 as integer, cr as byte,ct as byte,br as byte,bt as byte) As integer
		  dim result as integer
		  
		  
		  
		  Declare Function HP_InsertChord Lib "HP_midifile.dll" Alias "?HP_InsertChord@@YAIPAVMIDIFile@@HEEEE@Z" (hpHandle as integer, ltime as integer,lcr as byte,   lct as byte, lbr as byte,  lbt as byte) as Integer
		  result=HP_InsertChord(i,i2,cr,ct,br,bt)//HP_InsertChord(mf,time,chordRoot,ChordType,BassRoot,BassType)
		  
		  
		  return result
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertController(i as integer, i2 as integer, i3 as integer, i4 as UInt32, i5 as integer, i6 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertController Lib "HP_midifile.dll" Alias "?HP_InsertController@@YAIPAVMIDIFile@@HHHHH@Z" (hp as integer, time1 as integer , chan as integer, type as UInt32,  value as integer , controllerNumbr as integer ) as Integer
		    rtn= HP_InsertController(i,i2,i3,i4,i5,i6)//HP_InsertController(mf,time,chan,type,value, controllerNumbr);
		    
		    
		  #endif 
		  return rtn
		  
		  'hphandle Pointer to a HP_MIDIFILE handle.
		  '
		  'time The time (number of ticks) of the position of time of the controller event.
		  '
		  'chan The MIDI-channel.
		  '
		  'type The event type used with HP_MIDIFILE
		  '
		  'value The value of the controller. 0 <= value <= 127.
		  '
		  'controller_number :
		  
		  'if  controller_number = HP_NO_CONTROLLER_NUMBER: Use type to specify the controller.
		  '0 <= controller_number <= 127: Use controller-number to specify the controller.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertCopyright(i as integer, i2 as integer, s as Cstring) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertCopyright Lib "HP_midifile.dll" Alias "?HP_InsertCopyright@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, time1 as integer , txt as CString ) as Integer
		    rtn= HP_InsertCopyright(i,i2,s)//HP_InsertCopyright(mf,time,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertCuePoint(i as integer, i2 as integer, s as CString) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertCuePoint Lib "HP_midifile.dll" Alias "?HP_InsertCuePoint@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, time1 as integer , txt as CString ) as Integer
		    rtn= HP_InsertCuePoint(i,i2,s)//HP_InsertCuePoint(mf,time,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertGuideTrackFlag(i as integer, i2 as integer, s as CString,i3 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertGuideTrackFlag Lib "HP_midifile.dll" Alias "?HP_InsertGuideTrackFlag@@YAIPAVMIDIFile@@HPAEH@Z" (hp as integer, time1 as integer , txt as Cstring,llength as integer ) as Integer
		    rtn= HP_InsertGuideTrackFlag(i,i2,s,i3)//HP_InsertGuideTrackFlag(mf,time,text,length);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertInstrument(i as integer, i2 as integer, s as Cstring,i3 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertInstrument Lib "HP_midifile.dll" Alias "?HP_InsertInstrument@@YAIPAVMIDIFile@@HPADH@Z" (hp as integer, time1 as integer , txt as CString, lchan as integer ) as Integer
		    rtn= HP_InsertInstrument(i,i2,s,i3)//HP_InsertInstrument(mf,time,text,?? HP_ALL_Chan);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertKeySignature(i as integer, i2 as integer, s as Cstring) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertKeySignature Lib "HP_midifile.dll" Alias "?HP_InsertKeySignature@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, time1 as integer , txt as CString ) as Integer
		    rtn= HP_InsertKeySignature(i,i2,s)//HP_InsertKeySignature(mf,time,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertLyric(i as integer, i2 as integer, s as Cstring) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertLyric Lib "HP_midifile.dll" Alias "?HP_InsertLyric@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, time1 as integer , txt as CString ) as Integer
		    rtn= HP_InsertLyric(i,i2,s)//HP_InsertLyric(mf,time,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertMarker(i as integer, i2 as integer, s as Cstring) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertMarker Lib "HP_midifile.dll" Alias "?HP_InsertMarker@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, time1 as integer , txt as CString ) as Integer
		    rtn= HP_InsertMarker(i,i2,s)//HP_InsertMarker(mf,time,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertMidiPort(i as integer, i2 as integer, i3 as integer, i4 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertMIDIPort Lib "HP_midifile.dll" Alias "?HP_InsertMIDIPort@@YAIPAVMIDIFile@@HHH@Z" (hp as integer, time1 as integer , ltrack as integer, lport as integer ) as Integer
		    rtn= HP_InsertMIDIPort(i,i2,i3,i4)//HP_InsertMIDIPort(mf,time,track,port);
		    
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertNote(i as integer, i2 as integer, i3 as integer, i4 as integer, i5 as integer,i6 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertNote Lib "HP_midifile.dll" Alias "?HP_InsertNote@@YAIPAVMIDIFile@@HHHHH@Z" (hp as integer, ltime as integer ,llength as integer,note as integer,chan as integer, lvelocity as integer ) as Integer
		    rtn= HP_InsertNote(i,i2,i3,i4,i5,i6)//HP_InsertNote(mf,time,length, note value,chan,velocity);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertOtherYamahaMeta(i as integer, i2 as integer, s as CString,i3 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertOtherYamahaMeta Lib "HP_midifile.dll" Alias "?HP_InsertOtherYamahaMeta@@YAIPAVMIDIFile@@HPAEH@Z" (hp as integer, time1 as integer , txt as Cstring,llength as integer ) as Integer
		    rtn= HP_InsertOtherYamahaMeta(i,i2,s,i3)//HP_InsertOtherYamahaMeta(mf,time,text,length);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertPhraseMark(i as integer, i2 as integer, s as integer,i3 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertPhraseMark Lib "HP_midifile.dll" Alias "?HP_InsertPhraseMark@@YAIPAVMIDIFile@@HPAEH@Z" (hp as integer, time1 as integer , txt as integer,llength as integer ) as Integer
		    rtn= HP_InsertPhraseMark(i,i2,s,i3)//HP_InsertPhraseMark(mf,time,text,length);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertPitchWheel(i as integer, i2 as integer, i3 as integer, i4 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertPitchWheel Lib "HP_midifile.dll" Alias "?HP_InsertPitchWheel@@YAIPAVMIDIFile@@HHH@Z" (hp as integer, time1 as integer , lchan as integer, lvalue as integer ) as Integer
		    rtn= HP_InsertPitchWheel(i,i2,i3,i4)//HP_InsertPitchWheel(mf,time,chan,value);
		    
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPInsertProgramChange(i as integer, i2 as integer, i3 as integer, i4 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertProgramChange Lib "HP_midifile.dll" Alias "?HP_InsertProgramChange@@YAIPAVMIDIFile@@HHH@Z" (hp as integer, time1 as integer , lchan as integer, lpgmNumbr as integer ) as Integer
		    rtn= HP_InsertProgramChange(i,i2,i3,i4)//HP_InsertProgramChange(mf,time,chan,pgmNumbr);
		    
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertRawEvent(i as integer, i2 as integer, s as CString,i3 as integer) As Integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertRawEvent Lib "HP_midifile.dll" Alias "?HP_InsertRawEvent@@YAIPAVMIDIFile@@HPAEHH@Z" (hp as integer, time1 as integer , txt as Cstring,llength as integer ) as Integer
		    rtn= HP_InsertRawEvent(i,i2,s,i3)//HP_InsertRawEvent(mf,time,text,length);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertScoreStartBar(i as integer, i2 as integer, s as CString,i3 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertScoreStartBar Lib "HP_midifile.dll" Alias "?HP_InsertScoreStartBar@@YAIPAVMIDIFile@@HPAEH@Z" (hp as integer, time1 as integer , txt as Cstring,llength as integer ) as Integer
		    rtn= HP_InsertScoreStartBar(i,i2,s,i3)//HP_InsertScoreStartBar(mf,time,text,length);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertSongTrackName(i as integer, s as CString, i2 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertSongTrackName Lib "HP_midifile.dll" Alias "?HP_InsertSongTrackName@@YAIPAVMIDIFile@@PADH@Z" (hp as integer, txt as CString, chan1 as integer  ) as Integer
		    rtn= HP_InsertSongTrackName(i,s,i2)//HP_InsertSongTrackName(mf,text,chan);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPInsertSysex(i as integer, i2 as integer, s as Cstring) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertSysEx Lib "HP_midifile.dll" Alias "?HP_InsertSysEx@@YAIPAVMIDIFile@@HPAE@Z" (hp as integer, time1 as integer , txt as CString ) as Integer
		    rtn= HP_InsertSysEx(i,i2,s)//HP_InsertSysEx(mf,time,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPInsertTempo(i as integer, i2 as integer, i3 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertTempo Lib "HP_midifile.dll" Alias "?HP_InsertTempo@@YAIPAVMIDIFile@@HH@Z" (hp as integer, time1 as integer , lbpm as integer ) as Integer
		    rtn= HP_InsertTempo(i,i2,i3)//HP_InsertTempo(mf,time,bpm);
		    
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertText(i as integer, i2 as integer, s as CString) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertText Lib "HP_midifile.dll" Alias "?HP_InsertText@@YAIPAVMIDIFile@@HPAD@Z" (hp as integer, time1 as integer , txt as CString ) as Integer
		    rtn= HP_InsertText(i,i2,s)//HP_InsertText(mf,time,text);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpInsertTimeSignature(i as integer, i2 as integer, i3 as integer, i4 as integer, i5 as integer,i6 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_InsertTimeSignature Lib "HP_midifile.dll" Alias "?HP_InsertTimeSignature@@YAIPAVMIDIFile@@HHHHH@Z" (hp as integer, ltime as integer ,llength as integer,note as integer,chan as integer, lvelocity as integer ) as Integer
		    rtn= HP_InsertTimeSignature(i,i2,i3,i4,i5,i6)//HP_InsertTimeSignature(mf,time,num, denum ,met click,32noteinqtr);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpIsPlaying(i as integer) As boolean
		  dim rtn  as boolean
		  #if TargetWin32
		    Declare Function HP_IsPlaying Lib "HP_midifile.dll" Alias "?HP_IsPlaying@@YA_NPAVMIDIFile@@@Z" (hID as integer) as boolean
		    rtn= HP_IsPlaying(i)//HP_IsPlaying(Hpid)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpLoad(i as integer, s as string) As integer
		  Dim rtn as Integer
		  
		  #if TargetWin32
		    Declare Function HP_Load Lib "HP_midifile.dll" Alias "?HP_Load@@YAIPAVMIDIFile@@PBD@Z" (i2 As Integer, s2 As CString) As Integer
		    rtn=HP_load(i,s)
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpPaste(i as integer,i2 as integer, b as boolean,optional i3 As integer) As integer
		  dim rtn as integer
		  
		  #if TargetWin32
		    Declare Function HP_Paste Lib "HP_midifile.dll" Alias "?HP_Paste@@YAIPAVMIDIFile@@H_NH@Z" (hp as integer,  time as integer, delEvents as boolean, delEventsChan as integer) as Integer
		    rtn= HP_Paste (i,i2,b,i3)//HP_Paste (HPid,startTime,deleteEvents,deleteEventsChan)
		    
		    Return rtn
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpPlay(i as integer, i2 as integer, b as boolean) As integer
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_Play Lib "HP_midifile.dll" Alias "?HP_Play@@YAIPAVMIDIFile@@H_N@Z" ( Hpid As integer, selectedToPlay As integer, sendEffectsBefore as boolean) As integer
		    rtn=HP_Play(i,i2,b)//HP_Play(hpid,selected,sendEffectsBefore)
		    
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpPlayEventTime(i as integer) As integer
		  dim rtn as integer
		  #if TargetWin32
		    Declare Function HP_PlayEventTime Lib "HP_midifile.dll" Alias "?HP_PlayEventTime@@YAJPAVMIDIFile@@@Z" (i2 As Integer) As Integer
		    rtn= HP_PlayEventTime(i)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpPlayMute(i as integer, p as memoryBlock) As integer
		  dim rtn as integer
		  
		  
		  functionName="PlayMute"
		  
		  
		  Declare Function HP_PlayMute Lib "HP_midifile.dll" Alias "?HP_PlayMute@@YAIPAVMIDIFile@@QB_N@Z" ( Hpid As integer,lm as ptr) As integer
		  rtn=HP_PlayMute(i,p)
		  
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "A problem has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpPlayTempo(i as integer, i2 as integer) As integer
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_PlayTempo Lib "HP_midifile.dll" Alias "?HP_PlayTempo@@YAIPAVMIDIFile@@H@Z" ( Hpid As integer, selectedToPlay As integer) As integer
		    rtn=HP_PlayTempo(i,i2)//HP_PlayTempo(hpid,%  10-400)
		    
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpQuantizeSelected(i as integer,i2 as integer, b as boolean, b2 as boolean) As integer
		  dim rtn as integer
		  
		  #if TargetWin32
		    Declare Function HP_QuantisizeSelected Lib "HP_midifile.dll" Alias "?HP_QuantisizeSelected@@YAIPAVMIDIFile@@H_N1@Z" (hp as integer,  resolution as integer, start as boolean, length as boolean) as Integer
		    rtn= HP_QuantisizeSelected(i,i2,b,b2)//HP_QuantisizeSelected(HPid,resolution,startTimes,noteLengths)
		    
		    Return rtn
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadAftertouch(i as integer,i2 as integer) As integer
		  dim result as integer
		  'dim time,value,vel,length As integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadAftertouch Lib "HP_midifile.dll" Alias "?HP_ReadAftertouch@@YAIPAVMIDIFile@@HPAH111@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer, byRef lchan as integer, byRef lvalue as integer, byRef lpressure as integer) as Integer
		    result= HP_ReadAftertouch(i,i2,eventTime,eventChannel,eventValue,eventValue2)//HP_ReadNote(mf,id,&time,&chan,&note,&pressure)
		    
		    Return result
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadChannelPressure(i as integer,i2 as integer) As integer
		  dim result as integer
		  'dim time,value,vel,length As integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadChannelPressure Lib "HP_midifile.dll" Alias "?HP_ReadChannelPressure@@YAIPAVMIDIFile@@HPAH11@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer, byRef lchan as integer, byRef lvalue as integer) as Integer
		    result= HP_ReadChannelPressure(i,i2,eventTime,eventChannel,eventValue)//HP_ReadChannelPressure(mf,id,&time,&chan,&pressure)
		    
		    Return result
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadChord(i as integer,i2 as integer) As integer
		  dim result as integer
		  
		  dim lchord as CString
		  
		  
		  dim cr as byte
		  dim ct as byte
		  dim br as byte
		  dim bt as byte
		  textText=""
		  
		  Declare Function HP_ReadChord Lib "HP_midifile.dll" Alias "?HP_ReadChord@@YAIPAVMIDIFile@@HPAHPAE222PAPAD@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer, byRef lcr as byte,  byRef lct as byte, byRef lbr as byte, byRef lbt as byte, byRef locchord as CString) as Integer
		  result=HP_ReadChord(i,i2,eventTime,cr,ct,br,bt,lchord)//HP_ReadChord(mf,id,&time,&chordRoot,&ChordType,&BassRoot,&BassType,,&chord)
		  
		  textText=lchord
		  chordR=cr
		  chordT=ct
		  bassR=br
		  bassT = bt
		  
		  
		  
		  call HpDelete(lchord)
		  
		  
		  
		  
		  
		  '
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPReadChordVoicingForGuitar(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadChordVoicingForGuitar Lib "HP_midifile.dll" Alias "?HP_ReadChordVoicingForGuitar@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadChordVoicingForGuitar(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadController(i as integer,i2 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  
		  eventChannel=-1
		  eventTime=-1
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadController Lib "HP_midifile.dll" Alias "?HP_ReadController@@YAIPAVMIDIFile@@HPAH111@Z" (hp as integer, id as integer , byRef time as integer, byRef chan as integer, byRef lnumber as integer , byRef value as integer ) as Integer
		    rtn= HP_ReadController(i,i2,eventTime,eventChannel,eventValue, eventValue2)'HP_ReadController(mf,id,&time,&chan,&controllernumber,&value);
		    Return rtn
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadCopyright(i as integer, i2 as integer) As integer
		  
		  
		  
		  dim result as integer
		  
		  dim text as Cstring
		  dim operationName as String
		  functionName =  "HpReadCopyright"
		  
		  
		  
		  'text might be string or Cstring pr ptr to mem block See HpReadMaker2
		  
		  #if TargetWin32
		    Declare Function HP_ReadCopyright Lib "HP_midifile.dll" Alias "?HP_ReadCopyright@@YAIPAVMIDIFile@@HPAHPAPAD@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer,ByRef ltext as CString) as Integer
		    result= HP_ReadCopyright(i,i2,EventTime,text)//HP_ReadCopyright(i,i2,EventTime,textText)
		    
		    if result > 0 Then
		      operationName = "ReadCopyright"
		      msgbox("Error in "+ operationName + " in function " + functionName + " at location " + str(i2))
		    End If
		    
		    textText=text
		    call HpDelete(text)'The function allocates memory for the string. It has to be destroyed afterwards by the user with "HP_Delete(text);".
		    
		    Return result
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadCuePoint(i as integer, i2 as integer) As integer
		  dim result as integer
		  
		  dim text as Cstring
		  dim operationName as String
		  functionName =  "HpReadCuePoint"
		  
		  
		  
		  'text might be string or Cstring pr ptr to mem block See HpReadMaker2
		  
		  #if TargetWin32
		    Declare Function HP_ReadCuePoint Lib "HP_midifile.dll" Alias "?HP_ReadCuePoint@@YAIPAVMIDIFile@@HPAHPAPAD@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer,ByRef ltext as CString) as Integer
		    result= HP_ReadCuePoint(i,i2,EventTime,text)//HP_ReadCuePoint(i,i2,EventTime,textText)
		    
		    if result > 0 Then
		      operationName = "ReadText"
		      msgbox("Error in "+ operationName + " in function " + functionName + " at location " + str(i2))
		    End If
		    
		    textText=text
		    call HpDelete(text)'The function allocates memory for the string. It has to be destroyed afterwards by the user with "HP_Delete(text);".
		    
		    Return result
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadEvent(i as integer) As integer
		  Dim rtn as Integer
		  eventChannel=-1
		  eventTime=-1
		  eventTypeCode=-1
		  eventId=-1
		  
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadEvent Lib "HP_midifile.dll" Alias "?HP_ReadEvent@@YAIPAVMIDIFile@@PAH111@Z" (hp as integer, byRef id as integer, byRef chan as integer, byRef time as integer, byRef type as UInt32 ) as Integer
		    rtn= HP_ReadEvent(i,eventId,eventChannel,eventTime,eventTypeCode)
		    
		    Return rtn
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadEventData(i as integer, i2 as integer) As Integer
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadEventData Lib "HP_midifile.dll" Alias "?HP_ReadEventData@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadEventData(i,i2,time,pointer,length) //get pointer and data length
		  
		  eventTime=time//
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  ' call HpDelete(pointer)
		  
		  return result
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadFingeringNumber(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadFingeringNumber Lib "HP_midifile.dll" Alias "?HP_ReadFingeringNumber@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadFingeringNumber(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  'Dim ptrBlock as MemoryBlock
		  '
		  'ptrBlock = new MemoryBlock(4)
		  'ptrBlock.Long(0) = thePtr
		  'Return ptrBlock.Ptr(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPReadGuideTrackFlag(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadGuideTrackFlag Lib "HP_midifile.dll" Alias "?HP_ReadGuideTrackFlag@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadGuideTrackFlag(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  'Dim ptrBlock as MemoryBlock
		  '
		  'ptrBlock = new MemoryBlock(4)
		  'ptrBlock.Long(0) = thePtr
		  'Return ptrBlock.Ptr(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPReadGuitarInformationFlag(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadGuitarInformationFlag Lib "HP_midifile.dll" Alias "?HP_ReadGuitarInformationFlag@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadGuitarInformationFlag(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadInstrument(i as integer, i2 as integer) As integer
		  dim result as integer
		  
		  dim text as Cstring
		  dim operationName as String
		  functionName =  "HpReadInstrument"
		  
		  
		  
		  'text might be string or Cstring pr ptr to mem block See HpReadMaker2
		  
		  #if TargetWin32
		    Declare Function HP_ReadInstrument Lib "HP_midifile.dll" Alias "?HP_ReadInstrument@@YAIPAVMIDIFile@@HPAHPAPAD@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer,ByRef ltext as CString) as Integer
		    result= HP_ReadInstrument(i,i2,EventTime,text)//HP_ReadInstrument(i,i2,EventTime,textText)
		    
		    if result > 0 Then
		      operationName = "ReadText"
		      msgbox("Error in "+ operationName + " in function " + functionName + " at location " + str(i2))
		    End If
		    
		    textText=text
		    call HpDelete(text)'The function allocates memory for the string. It has to be destroyed afterwards by the user with "HP_Delete(text);".
		    
		    Return result
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadKeyboardVoice(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadKeyboardVoice Lib "HP_midifile.dll" Alias "?HP_ReadKeyboardVoice@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadKeyboardVoice(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  'Dim ptrBlock as MemoryBlock
		  '
		  'ptrBlock = new MemoryBlock(4)
		  'ptrBlock.Long(0) = thePtr
		  'Return ptrBlock.Ptr(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadKeySignature(i as integer, i2 as integer) As integer
		  
		  dim result as integer
		  dim key as CString
		  dim operationName as String
		  functionName =  "HpReadKeySignature"
		  
		  
		  #if TargetWin32
		    
		    Declare Function HP_ReadKeySignature Lib "HP_midifile.dll" Alias "?HP_ReadKeySignature@@YAIPAVMIDIFile@@HPAHPAPAD@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer,ByRef ltext as CString) as Integer
		    result= HP_ReadKeySignature(i,i2,eventTime,key)' HP_ReadKeySignature(mf,id,&time,&key);
		    
		    if result > 0 Then
		      operationName = "ReadKeySignature"
		      msgbox("Error in "+ operationName + " in function " + functionName + " at location " + str(i2))
		    End If
		    
		    keySignature=key
		    call HpDelete(key)'The function allocates memory for the string. It has to be destroyed afterwards by the user with "HP_Delete(text);".
		    Return result
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadLyric(i as integer, i2 as integer) As integer
		  
		  
		  
		  dim result as integer
		  
		  dim text as Cstring
		  dim operationName as String
		  functionName =  "HpReadLyric"
		  
		  
		  
		  'text might be string or Cstring pr ptr to mem block See HpReadMaker2
		  
		  #if TargetWin32
		    Declare Function HP_ReadLyric Lib "HP_midifile.dll" Alias "?HP_ReadLyric@@YAIPAVMIDIFile@@HPAHPAPAD@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer,ByRef ltext as CString) as Integer
		    result= HP_ReadLyric(i,i2,EventTime,text)//HP_ReadLyric(i,i2,EventTime,textText)
		    
		    if result > 0 Then
		      operationName = "ReadLyric"
		      msgbox("Error in "+ operationName + " in function " + functionName + " at location " + str(i2))
		    End If
		    
		    
		    
		    textText=text
		    
		    call HpDelete(text)'The function allocates memory for the string. It has to be destroyed afterwards by the user with "HP_Delete(text);".
		    
		    Return result
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadLyricsBitmap(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadLyricsBitmap Lib "HP_midifile.dll" Alias "?HP_ReadLyricsBitmap@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadLyricsBitmap(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadMarker(i as integer, i2 as integer) As integer
		  
		  dim result as integer
		  
		  dim marker as Cstring
		  dim operationName as String
		  functionName =  "HpReadMarker"
		  
		  
		  
		  'text might be string or Cstring pr ptr to mem block See HpReadMaker2
		  
		  #if TargetWin32
		    Declare Function HP_ReadMarker Lib "HP_midifile.dll" Alias "?HP_ReadMarker@@YAIPAVMIDIFile@@HPAHPAPAD@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer,ByRef ltext as CString) as Integer
		    result= HP_ReadMarker(i,i2,EventTime,marker)
		    
		    if result > 0 Then
		      operationName = "ReadMarker"
		      msgbox("Error in "+ operationName + " in function " + functionName + " at location " + str(i2))
		    End If
		    
		    markerText=marker
		    call HpDelete(marker)'The function allocates memory for the string. It has to be destroyed afterwards by the user with "HP_Delete(text);".
		    
		    
		    
		    
		    
		    
		    Return result
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadMaxPhraseMark(i as integer, i2 as integer) As Integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadMaxPhraseMark Lib "HP_midifile.dll" Alias "?HP_ReadMaxPhraseMark@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadMaxPhraseMark(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  'Dim ptrBlock as MemoryBlock
		  '
		  'ptrBlock = new MemoryBlock(4)
		  'ptrBlock.Long(0) = thePtr
		  'Return ptrBlock.Ptr(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadMidiPort(i as integer, i2 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadMidiPort Lib "HP_midifile.dll" Alias "?HP_ReadMidiPort@@YAIPAVMIDIFile@@HPAH11@Z"(hp as integer, id as integer ,byRef ltime as integer, byRef ltrack as integer, byRef lport as integer ) as Integer
		    rtn= HP_ReadMidiPort(i,i2,eventTime,eventValue, eventValue2)//HP_ReadMidiPort(mf,id,time, track,port);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadNote(i as integer,i2 as integer) As integer
		  dim result as integer
		  
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadNote Lib "HP_midifile.dll" Alias "?HP_ReadNote@@YAIPAVMIDIFile@@HPAH1111@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer, byRef lchan as integer, byRef lvalue as integer, byRef lvelocity as integer, byRef llength as integer) as Integer
		    result= HP_ReadNote(i,i2,eventTime,eventChannel,noteValue,noteVelocity,noteLength)//HP_ReadNote(mf,id,&time,&chan,&value,&vel,&length)
		    
		    Return result
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadNRPN(i as integer, i2 as integer) As integer
		  
		  'Dim rtn as Integer
		  
		  
		  '#if TargetWin32
		  'Declare Function HP_ReadNRPN Lib "HP_midifile.dll" Alias "?HP_ReadNRPN@@YAIPAVMIDIFile@@HPAH1PA_N11@Z"(hp as integer, id as integer , byRef ltime as integer, byRef lchan as integer, byRef labsolute as boolean, byRef lNRPNNum as integer,byRef lNRPNvalue as boolean ) as Integer
		  'rtn= HP_ReadNRPN(i,i2,eventTime,eventChannel,absolute,eventValue,eventValue2)//HP_ReadNRPN(mf,id,time,chan, absolute NRPN Number,Value);
		  '
		  '#endif
		  'return rtn
		  
		  
		  
		  
		  
		  'hphandle Pointer to a HP_MIDIFILE handle.
		  '
		  'id The index of the eventlist of the note event.
		  '
		  'time A pointer filled by the function with the event's position of time.
		  '
		  'chan A pointer filled by the function with the number of the MIDI-channel.
		  '
		  'absolute A pointer filled by the function with the information about absolute or relative value.
		  'absolute = true: absolute value
		  'absolute = false: relative value (value < 0: Decrement, value > 0: Increment)
		  '
		  'number A pointer filled by the function with the NRPN-number.
		  '
		  'value A pointer filled by the function with the NRPN value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadOtherYamahaMeta(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  functionName="HP read Other Yamaha Meta"
		  
		  
		  Declare Function HP_ReadOtherYamahaMeta Lib "HP_midifile.dll" Alias "?HP_ReadOtherYamahaMeta@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadOtherYamahaMeta(i,i2,time,pointer,length) //get pointer and data length 
		  
		  
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  
		  Exception
		    'System.DebugLog( "Unknown exception in: " +functionName )
		    MsgBox( "An Error has been encountered in the function " + functionName+". If the cause is not obvious, please report this to the author."+ endofLine + endofLine +"You can use the Help/E-Mail Author menu item for this purpose." )
		    
		    
		    
		    
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadPhraseMark(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadPhraseMark Lib "HP_midifile.dll" Alias "?HP_ReadPhraseMark@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadPhraseMark(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  'Dim ptrBlock as MemoryBlock
		  '
		  'ptrBlock = new MemoryBlock(4)
		  'ptrBlock.Long(0) = thePtr
		  'Return ptrBlock.Ptr(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadPitchWheel(i as integer, i2 as integer) As integer
		  
		  
		  
		  Dim rtn as Integer
		  functionName ="HpReadPitchWheel"
		  
		  eventValue=0
		  eventvalue2=0
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadPitchWheel Lib "HP_midifile.dll" Alias "?HP_ReadPitchWheel@@YAIPAVMIDIFile@@HPAH11@Z" (hp as integer, id as integer , byRef time as integer, byRef chan as integer, byRef value as integer ) as Integer
		    rtn= HP_ReadPitchWheel(i,i2,eventTime,eventChannel,eventValue)' HP_ReadPitchWheel(mf,id,&time,&chan,&voice);
		    
		    
		    Return rtn
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadPPQN(i as integer) As integer
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_ReadPPQN Lib "HP_midifile.dll" Alias "?HP_ReadPPQN@@YAIPAVMIDIFile@@PAH@Z" (hp as integer, byRef ppqnNumber as integer) as Integer
		    rtn= HP_ReadPPQN(i, PPQN)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadProgramChange(i as integer, i2 as integer) As Integer
		  Dim rtn as Integer
		  functionName ="HpReadProgramChange"
		  
		  
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadProgramChange Lib "HP_midifile.dll" Alias "?HP_ReadProgramChange@@YAIPAVMIDIFile@@HPAH11@Z" (hp as integer, id as integer , byRef time as integer, byRef chan as integer, byRef voice as integer ) as Integer
		    rtn= HP_ReadProgramChange(i,i2,eventTime,eventChannel,eventValue)' HP_ReadProgramChange(mf,id,&time,&chan,&voice);
		    
		    
		    Return rtn
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadRehearsalMark(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadRehearsalMark Lib "HP_midifile.dll" Alias "?HP_ReadRehearsalMark@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadRehearsalMark(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  'Dim ptrBlock as MemoryBlock
		  '
		  'ptrBlock = new MemoryBlock(4)
		  'ptrBlock.Long(0) = thePtr
		  'Return ptrBlock.Ptr(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadRPN(i as integer, i2 as integer) As integer
		  
		  'Dim rtn as Integer
		  
		  
		  '#if TargetWin32
		  'Declare Function HP_ReadRPN Lib "HP_midifile.dll" Alias "?HP_ReadRPN@@YAIPAVMIDIFile@@HPAH1PA_N11@Z"(lhp as integer, lid as integer ,byref ltime as integer, byref lchan as integer, byref labsolute as boolean, byref lNRPNNum as integer, byref lNRPNvalue as boolean ) as Integer
		  '
		  '
		  'rtn= HP_ReadRPN(i,i2,eventTime,eventChannel, absolute, eventValue,eventValue2)//HP_ReadRPN(mf,id,time,chan, absolute NRPN Number,Value);
		  '
		  '#endif
		  'return rtn
		  
		  
		  
		  
		  
		  'hphandle Pointer to a HP_MIDIFILE handle.
		  '
		  'id The index of the eventlist of the note event.
		  '
		  'time A pointer filled by the function with the event's position of time.
		  '
		  'chan A pointer filled by the function with the number of the MIDI-channel.
		  '
		  'absolute A pointer filled by the function with the information about absolute or relative value.
		  'absolute = true: absolute value
		  'absolute = false: relative value (value < 0: Decrement, value > 0: Increment)
		  '
		  'number A pointer filled by the function with the NRPN-number.
		  '
		  'value A pointer filled by the function with the NRPN value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadScoreStartBar(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadScoreStartBar Lib "HP_midifile.dll" Alias "?HP_ReadScoreStartBar@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadScoreStartBar(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  'Dim ptrBlock as MemoryBlock
		  '
		  'ptrBlock = new MemoryBlock(4)
		  'ptrBlock.Long(0) = thePtr
		  'Return ptrBlock.Ptr(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadSequenceNumber(i as integer, i2 as integer) As Integer
		  Dim rtn as Integer
		  dim lNumber as integer
		  functionName ="HpSequenceNumber"
		  
		  
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadSequenceNumber Lib "HP_midifile.dll" Alias "?HP_ReadSequenceNumber@@YAIPAVMIDIFile@@HPAH1@Z" (hp as integer, id as integer , byRef num as integer) as Integer
		    rtn= HP_ReadSequenceNumber(i,i2,lNumber)' HP_ReadSequenceNumber(mf,id,&number);
		    
		    
		    Return lNumber
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadSmpteOffset(i as integer, i2 as integer) As integer
		  dim result as integer
		  dim hour,minutes,seconds,frames,subframes as integer
		  
		  functionName =  "HpReadSmpte"
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadSmpteOffset Lib "HP_midifile.dll" Alias "?HP_ReadSmpteOffset@@YAIPAVMIDIFile@@HPAH1111@Z" (hpHandle as integer, idofevent as integer, byRef lhour as integer,byRef lminutes as integer,byRef lseconds as integer,byRef lframes as integer,byRef lsubframes as integer) as Integer
		    result= HP_ReadSmpteOffset(i,i2,hour,minutes,seconds,frames,subframes)//HP_ReadSmpteOffset(i,i2, hour,minutes, seconds,frames,subframes)
		    
		    smpteOffset=str(hour)+":"+str(minutes)+":"+str(seconds)+":"+str(frames)+":"+str(subframes)
		    
		    
		    Return result
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadSongTrackName(i as integer, i2 as integer) As integer
		  
		  
		  
		  dim result as integer
		  
		  dim text as Cstring
		  dim operationName as String
		  functionName =  "HpReadTrackName"
		  
		  
		  
		  'text might be string or Cstring pr ptr to mem block See HpReadMaker2
		  
		  #if TargetWin32
		    Declare Function HP_ReadSongTrackName Lib "HP_midifile.dll" Alias "?HP_ReadSongTrackName@@YAIPAVMIDIFile@@HPAHPAPAD@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer,ByRef ltext as CString) as Integer
		    result= HP_ReadSongTrackName(i,i2,markerEventTime,text)//HP_ReadSongTrackName(i,i2,markerEventTime,textText)
		    
		    if result > 0 Then
		      operationName = "ReadTrackName"
		      msgbox("Error in "+ operationName + " in function " + functionName + " at location " + str(i2))
		    End If
		    
		    
		    textText=text
		    call HpDelete(text)'The function allocates memory for the string. It has to be destroyed afterwards by the user with "HP_Delete(text);".
		    
		    Return result
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPReadSysex(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadSysex Lib "HP_midifile.dll" Alias "?HP_ReadSysex@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadSysex(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  ' call HpDelete(pointer)
		  
		  return result
		  
		  'Dim ptrBlock as MemoryBlock
		  '
		  'ptrBlock = new MemoryBlock(4)
		  'ptrBlock.Long(0) = thePtr
		  'Return ptrBlock.Ptr(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPReadTempo(i as integer, i2 as integer) As integer
		  Dim rtn as Integer
		  
		  eventChannel=-1
		  eventTime=-1
		  
		  
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadTempo Lib "HP_midifile.dll" Alias "?HP_ReadTempo@@YAIPAVMIDIFile@@HPAH11@Z" (hp as integer, id as integer , byRef time as integer, byRef bpm as integer, byRef ticspersec as integer ) as Integer
		    rtn= HP_ReadTempo(i,i2,eventTime,beatsPerMinute,ticksPerSecond)' HP_ReadTempo(mf,id,&time,&bpm,&ticpersec);
		    
		    Return rtn
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPReadText(i as integer, i2 as integer) As integer
		  dim result as integer
		  
		  dim text as Cstring
		  dim operationName as String
		  functionName =  "HpReadText"
		  
		  
		  
		  'text might be string or Cstring pr ptr to mem block See HpReadMaker2
		  
		  #if TargetWin32
		    Declare Function HP_ReadText Lib "HP_midifile.dll" Alias "?HP_ReadText@@YAIPAVMIDIFile@@HPAHPAPAD@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer,ByRef ltext as CString) as Integer
		    result= HP_ReadText(i,i2,markerEventTime,text)//HP_ReadText(i,i2,markerEventTime,textText)
		    
		    if result > 0 Then
		      operationName = "ReadText"
		      msgbox("Error in "+ operationName + " in function " + functionName + " at location " + str(i2))
		    End If
		    
		    textText=text
		    call HpDelete(text)'The function allocates memory for the string. It has to be destroyed afterwards by the user with "HP_Delete(text);".
		    
		    Return result
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPReadTimeSignature(i as integer,i2 as integer) As integer
		  dim result as integer
		  'dim time,value,vel,length As integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ReadTimeSignature Lib "HP_midifile.dll" Alias "?HP_ReadTimeSignature@@YAIPAVMIDIFile@@HPAH1111@Z" (hpHandle as integer, idofevent as integer, byRef ltime as integer, byRef lnum as integer, byRef ldenum as integer, byRef lclicks as integer, byRef ln32 as integer) as Integer
		    result= HP_ReadTimeSignature(i,i2,eventTime,numerator,denominator,metClicksPerQtrNote,ThirtySecondNotesPerQtr)//HP_ReadNote(mf,id,&time,&num,&demum,&clicks,&n32)
		    
		    Return result
		    
		  #endif
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpReadXFVersionID(i as integer, i2 as integer) As integer
		  '
		  
		  dim result, time,length As integer
		  dim pointer as new MemoryBlock(4)
		  dim sysex as MemoryBlock
		  
		  Declare Function HP_ReadXFVersionID Lib "HP_midifile.dll" Alias "?HP_ReadXFVersionID@@YAIPAVMIDIFile@@HPAHPAPAE1@Z" (hpHandle as integer, id as integer, byRef ltime as integer,  data as ptr,  byRef llength as integer) as Integer
		  
		  result= HP_ReadXFVersionID(i,i2,time,pointer,length) //get pointer and data length 
		  
		  sysex = New MemoryBlock(length) //set data memory block size
		  
		  sysex=pointer.ptr(0)// get data memoryblock using ptr version of pointer block
		  
		  sysexData=sysex.StringValue(0,length) //create string
		  
		  'call HpDelete(pointer)
		  
		  return result
		  
		  'Dim ptrBlock as MemoryBlock
		  '
		  'ptrBlock = new MemoryBlock(4)
		  'ptrBlock.Long(0) = thePtr
		  'Return ptrBlock.Ptr(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpRewind(i as integer) As integer
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_Rewind Lib "HP_midifile.dll" Alias "?HP_Rewind@@YAIPAVMIDIFile@@@Z" (i as integer)  as Integer
		    rtn= HP_Rewind(i)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpSave(i as integer, s as Cstring, i2 as integer) As integer
		  Dim rtn as Integer
		  dim sName as CString
		  sName=s
		  
		  #if TargetWin32
		    Declare Function HP_Save Lib "HP_midifile.dll" Alias "?HP_Save@@YAIPAVMIDIFile@@PBDH@Z" (Hpid As integer, name As CString, format As integer) As integer
		    rtn= HP_Save(i,sName,i2)//HP_Save(HPid,name,midiFormat)
		  #endif
		  
		  
		  
		  Return rtn
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpSelect(i as integer, i2 as integer) As integer
		  dim rtn as integer
		  
		  #if TargetWin32
		    Declare Function HP_Select Lib "HP_midifile.dll" Alias "?HP_Select@@YAIPAVMIDIFile@@H@Z" (hp as integer,  id as integer) as Integer
		    rtn= HP_Select (i,i2)//HP_Select (HPidID or HP_ALL_EVENTS)
		    
		    Return rtn
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpSelectChanTime(i as integer, i2 as integer, i3 as integer, i4 as integer) As integer
		  dim rtn as integer
		  
		  #if TargetWin32
		    Declare Function HP_SelectChanTime Lib "HP_midifile.dll" Alias "?HP_SelectChanTime@@YAIPAVMIDIFile@@HHH@Z" (hp as integer,  chan as integer, time1 as integer, time2 as integer) as Integer
		    rtn= HP_SelectChanTime (i,i2,i3,i4)//HP_SelectChanTime (HPid,chan,time1,time2)
		    
		    Return rtn
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpSelectMidiDevice(i as integer) As integer
		  dim rtn as integer
		  #if TargetWin32
		    Declare Function HP_SelectMIDIDevice Lib "HP_midifile.dll" Alias "?HP_SelectMIDIDevice@@YAIH@Z" (devNum As Integer) As Integer
		    rtn= HP_SelectMIDIDevice(i)//rtn= HP_SelectMIDIDevice(devNum)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPSetFirst(i as integer, b As  boolean) As integer
		  dim rtn  as integer
		  #if TargetWin32
		    Declare Function HP_SetFirst Lib "HP_midifile.dll" Alias "?HP_SetFirst@@YAIPAVMIDIFile@@_N@Z" (hp as integer, position as boolean) as Integer
		    call HP_SetFirst(i,b)//HP_SetFirst(HPid,HP_First ot HP_Liat)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpSetPlayStopWait(i as integer, i2 as integer) As integer
		  dim rtn as integer
		  #if TargetWin32
		    Declare Function HP_SetPlayStopWait Lib "HP_midifile.dll" Alias "?HP_SetPlayStopWait@@YAIPAVMIDIFile@@H@Z" (lhpid as integer, lID As Integer) As Integer
		    rtn= HP_SetPlayStopWait(i,i2)//HP_SetPlayStopWait(HPid,Mode)
		  #endif
		  
		  Return rtn
		  
		  'HP_STOP_PLAY: Stop playing.
		  'HP_WAIT_PLAY: Pause playing.
		  'HP_GO_PLAY: Go on playing.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpSetPlayTime(i as integer, i2 as integer) As integer
		  
		  Dim rtn as Integer
		  #if TargetWin32
		    Declare Function HP_SetPlayTime Lib "HP_midifile.dll" Alias "?HP_SetPlayTime@@YAIPAVMIDIFile@@H@Z" ( Hpid As integer, selectedToPlay As integer) As integer
		    rtn=HP_SetPlayTime(i,i2)//HP_SetPlayTime(hpid,time)
		    
		  #endif
		  
		  Return rtn
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpSettleOverlappingNotes(i as integer, b as boolean) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_SettleOverlappingNotes Lib "HP_midifile.dll" Alias "?HP_SettleOverlappingNotes@@YAIPAVMIDIFile@@_N@Z" (hp as integer,  method as boolean ) as Integer
		    rtn=HP_SettleOverlappingNotes(i,b)//HP_SettleOverlappingNotes(mf,method);
		    
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HPShiftEvent(i as integer,i2 as integer,i3  as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ShiftEvent Lib "HP_midifile.dll" Alias "?HP_ShiftEvent@@YAIPAVMIDIFile@@HH@Z" (hp as integer, lid as integer ,lvalue as integer) as Integer
		    rtn= HP_ShiftEvent(i,i2,i3)//HP_ShiftEvent(mf,id, +-Ticks);
		    
		  #endif
		  return rtn
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpShiftNotesSelected(i as integer,i2 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ShiftNotesSelected Lib "HP_midifile.dll" Alias "?HP_ShiftNotesSelected@@YAIPAVMIDIFile@@H@Z" (hp as integer ,lvalue as integer) as Integer
		    rtn= HP_ShiftNotesSelected(i,i2)//HP_ShiftNotesSelected(mf, +-Ticks);
		    
		  #endif
		  return rtn
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpShiftSelected(i as integer, i2 as integer) As integer
		  Dim rtn as Integer
		  
		  
		  #if TargetWin32
		    Declare Function HP_ShiftSelected Lib "HP_midifile.dll" Alias "?HP_ShiftSelected@@YAIPAVMIDIFile@@H@Z" (hp as integer ,lvalue as integer) as Integer
		    rtn= HP_ShiftSelected(i,i2)//HP_ShiftSelected(mf, +-Ticks);
		    
		  #endif
		  return rtn
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpTransposeSelected(i as integer, i2 as integer) As integer
		  dim rtn  as integer
		  #if TargetWin32
		    Declare Function HP_TransposeSelected Lib "HP_midifile.dll" Alias "?HP_TransposeSelected@@YAIPAVMIDIFile@@H@Z" (hp as integer, steps as integer) as Integer
		    rtn= HP_TransposeSelected(i,i2)//HP_TransposeSelected(HPid,steps)
		  #endif
		  
		  Return rtn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HpTypeName(i as integer) As Cstring
		  Dim rtn as String
		  
		  #if TargetWin32
		    Declare Function HP_TypeName Lib "HP_midifile.dll" Alias "?HP_TypeName@@YAPADI@Z" (i2 As Integer) As CString
		    rtn=HP_TypeName(i)
		  #endif
		  return rtn
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function HP_GetVersion Lib "HP_midifile.dll" Alias "?HP_GetVersion@@YAPADXZ" () As CString
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function PtrToMemoryBlock(thePtr as Integer) As MemoryBlock
		  Dim ptrBlock as MemoryBlock
		  
		  ptrBlock = new MemoryBlock(4)
		  ptrBlock.Long(0) = thePtr
		  Return ptrBlock.Ptr(0)      
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		absolute As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		BassR As byte
	#tag EndProperty

	#tag Property, Flags = &h0
		BassT As byte
	#tag EndProperty

	#tag Property, Flags = &h0
		beatsPerMinute As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		chord As string
	#tag EndProperty

	#tag Property, Flags = &h0
		chordR As byte
	#tag EndProperty

	#tag Property, Flags = &h0
		chordT As byte
	#tag EndProperty

	#tag Property, Flags = &h0
		copyright As string
	#tag EndProperty

	#tag Property, Flags = &h0
		copyrightEventID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		denominator As Integer = 4
	#tag EndProperty

	#tag Property, Flags = &h0
		eventChannel As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		eventID As int32
	#tag EndProperty

	#tag Property, Flags = &h0
		eventTime As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		eventTypeCode As Uint32
	#tag EndProperty

	#tag Property, Flags = &h0
		eventValue As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		eventValue2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		keySignature As String
	#tag EndProperty

	#tag Property, Flags = &h0
		keySignatureID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lastTime As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		m As memoryblock
	#tag EndProperty

	#tag Property, Flags = &h0
		markerEventTime As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		markerID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		markerText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MetClicksPerQtrNote As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		noteLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		noteValue As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		noteVelocity As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		numerator As Integer = 4
	#tag EndProperty

	#tag Property, Flags = &h0
		SmpteOffset As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sysexData As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sysexLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		textText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ThirtySecondNotesPerQtr As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		tick As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ticksPerSecond As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		timeStamp As Integer
	#tag EndProperty


	#tag Constant, Name = HP_ABSOLUTE, Type = Boolean, Dynamic = False, Default = \"true", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_ALL, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_ALL_CHAN, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_ALL_EVENTS, Type = Double, Dynamic = False, Default = \"-2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_ALL_NOTES, Type = Double, Dynamic = False, Default = \"-2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_ASSEMBLE, Type = Boolean, Dynamic = False, Default = \"true", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_BANK_SELECT_LSB, Type = Double, Dynamic = False, Default = \"525312", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_BANK_SELECT_MSB, Type = Double, Dynamic = False, Default = \"66560", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_BRIGHTNESS, Type = Double, Dynamic = False, Default = \"1049600", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_CHORUS_SEND_LEVEL, Type = Double, Dynamic = False, Default = \"1508352", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_COPYRIGHT, Type = Double, Dynamic = False, Default = \"769", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_DELETE, Type = Boolean, Dynamic = False, Default = \"true", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_ERR_NONE, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_EXPRESSION, Type = Double, Dynamic = False, Default = \"459776", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_FIRST, Type = Boolean, Dynamic = False, Default = \"true", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_GM_PERC_BANK, Type = Double, Dynamic = False, Default = \"-256", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_GM_VOICE_BANK, Type = Double, Dynamic = False, Default = \"-128", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_GO_PLAY, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_HARMONIC_CONTENT, Type = Double, Dynamic = False, Default = \"852992", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_KEY_SIGNATURE, Type = Double, Dynamic = False, Default = \"3841", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_LAST, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_MAIN_VOLUME, Type = Double, Dynamic = False, Default = \"328704", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_MARKER, Type = Double, Dynamic = False, Default = \"1793", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_MODULATION, Type = Double, Dynamic = False, Default = \"132096", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NOTE, Type = Double, Dynamic = False, Default = \"512", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NO_ASSEMBLE, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NO_CHAN, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NO_CONTROLLER_NUMBER, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NO_DELETE, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NO_NOTE, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NO_PERCENT, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NO_SEND_BEFORE, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NO_TIME_LIMIT, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_NO_TRACK, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_OTHER_META, Type = Double, Dynamic = False, Default = \"65025", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_OTHER_YAMAHA_META, Type = Double, Dynamic = False, Default = \"65281", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_PANPOT, Type = Double, Dynamic = False, Default = \"394240", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_PERCENT, Type = Boolean, Dynamic = False, Default = \"true", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_PITCH_WHEEL, Type = Double, Dynamic = False, Default = \"1792", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_PPQN1920, Type = Double, Dynamic = False, Default = \"1920", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_PROGRAM_CHANGE, Type = Double, Dynamic = False, Default = \"1280", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_RELATIVE, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_REVERB_SEND_LEVEL, Type = Double, Dynamic = False, Default = \"1442816", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_SELECTED, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_SEND_EFFECT_EVENTS_BEFORE, Type = Boolean, Dynamic = False, Default = \"true", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_SMF0, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_SMF1, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_SMPTE_OFFSET, Type = Double, Dynamic = False, Default = \"3329", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_STOP_PLAY, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_SYSEX, Type = Double, Dynamic = False, Default = \"2048", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_TEMPO, Type = Double, Dynamic = False, Default = \"3073", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_TEXT, Type = Double, Dynamic = False, Default = \"513", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_TIME_SIGNATURE, Type = Double, Dynamic = False, Default = \"3585", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_VARIATION_SEND_LEVEL, Type = Double, Dynamic = False, Default = \"1573888", Scope = Public
	#tag EndConstant

	#tag Constant, Name = HP_WAIT_PLAY, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MAXPNAMELEN, Type = Double, Dynamic = False, Default = \"32", Scope = Public
	#tag EndConstant


	#tag Structure, Name = HP_device, Flags = &h0, Attributes = \"StructureAlignment \x3D 1"
		device_id as integer
		device_name as Cstring*32
	#tag EndStructure

	#tag Structure, Name = MIDIOUTCAPS, Flags = &h0, Attributes = \"StructureAlignment \x3D 1"
		wMid As Int16
		  wPid As Int16
		  vDriverVersion As Integer
		  szPname as Cstring*32
		  wTechnology As Integer
		  wVoices As Integer
		  wNotes As Integer
		  wChannelMask As Integer
		dwSupport As Integer
	#tag EndStructure

	#tag Structure, Name = no_devices, Flags = &h0, Attributes = \"StructureAlignment \x3D 1"
		theNumber as integer
	#tag EndStructure


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
			Name="eventChannel"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="eventTime"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="markerText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="markerEventTime"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="textText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="beatsPerMinute"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ticksPerSecond"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="noteValue"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="noteVelocity"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="noteLength"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sysexLength"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sysexData"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastTime"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="numerator"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MetClicksPerQtrNote"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThirtySecondNotesPerQtr"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="denominator"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="tick"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="keySignature"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="eventValue"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="eventValue2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="markerID"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="keySignatureID"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="copyrightEventID"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="timeStamp"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="chord"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="absolute"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SmpteOffset"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="eventID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="int32"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="eventTypeCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Uint32"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BassR"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="byte"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BassT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="byte"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="chordR"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="byte"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="chordT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="byte"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
