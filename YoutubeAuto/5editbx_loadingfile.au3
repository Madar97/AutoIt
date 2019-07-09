#include<GUIConstantsEx.au3>
#include<WindowsConstants.au3>
#include<EditConstants.au3>
#include<GuiEdit.au3>
#include<Constants.au3>

GUICreate("Editor and Text loader", 296,249,154)
$button1 = GUICtrlCreateButton("Load List", 55,188,60,40)
$edit = GUICtrlCreateEdit("",10,10,270,150)
GUISetState(@SW_SHOW)


While 1
	$msg = GUIGetMsg()
	If $msg = - 3 Then exit1()
	If $msg = $button1 Then button1()
WEnd

Func button1()
	$message = ("Clilck shift to select multiple files")
	$var = FileOpenDialog($message, @DesktopCommonDir & "\" , "Lists (*.txt)")
	$file = FileRead($var)
		If @error Then
			MsgBox(48 + 32,"","No files were selcted")
		Else
			GUICtrlSetData($edit,$file)
		EndIf
EndFunc

Func exit1()
	If Not IsDeclared ("iMsgBoxAnswer") Then Local $iMsgBoxAnswer
	$iMsgBoxAnswer = MsgBox(4 + 32,"Exit","Are you sure you want to exit?")
		Select
			Case $iMsgBoxAnswer = 6 ;Yes
				Sleep(100)
				Exit
			Case $iMsgBoxAnswer = 7 ;No
		EndSelect
EndFunc
