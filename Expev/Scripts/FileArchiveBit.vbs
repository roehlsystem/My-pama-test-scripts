'Must have 2 arguments, file path and set/reset state of archive attribute bit
Set objArgs = WScript.Arguments
If objArgs.Count > 1 Then
  Dim fsoSysObj
  Set fsoSysObj = CreateObject("Scripting.FileSystemObject")
  'File must exist
  If fsoSysObj.FileExists(objArgs(0)) Then
    'Get file attributes
    Set f = fsoSysObj.GetFile(objArgs(0))
    'Set or reset archive bit
    If objArgs(1) > 0 Then
      'Set archive bit
      f.attributes = f.attributes + 32
'      Msgbox objArgs(0)+" archive bit is set"		'Comment out after debugging
    Else
      'Clear archive bit
      f.attributes = f.attributes - 32
'      Msgbox objArgs(0)+" archive bit is cleared"	'Comment out after debugging
    End If
  Else
'    Msgbox "File: "+objArgs(0)+" does not exist"	'Comment out after debugging
  End If
Else
'  Msgbox "Syntax: file A (where A = 1/0 to Set/Clear archive bit)"	'Comment out after debugging
End If
