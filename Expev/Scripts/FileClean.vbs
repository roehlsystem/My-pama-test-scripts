'Must have 2 arguments, file path and set/reset state of archive attribute bit
Set objArgs = WScript.Arguments
If objArgs.Count > 0 Then
  Dim fsoSysObj
  Set fsoSysObj = CreateObject("Scripting.FileSystemObject")
  'File must exist
  If fsoSysObj.FileExists(objArgs(0)) Then
	a=fsoSysObj.DeleteFile(objArgs(0),TRUE)
  End If
End If
