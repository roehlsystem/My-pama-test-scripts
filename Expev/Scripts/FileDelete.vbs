'Must have 1 argument (file path)
Set objArgs = WScript.Arguments
If objArgs.Count > 0 Then
  Dim fsoSysObj, MyFile
  Set fsoSysObj = CreateObject("Scripting.FileSystemObject")
  'File must exist
  If fsoSysObj.FileExists(objArgs(0)) Then
    'Delete file
    Set MyFile = fsoSysObj.GetFile(objArgs(0))
    MyFile.Delete
  Else
'    Msgbox "File: "+objArgs(0)+" does not exist"	'Comment out after debugging
  End If
Else
'  Msgbox "Syntax: FilenameToDelete"			'Comment out after debugging
End If
