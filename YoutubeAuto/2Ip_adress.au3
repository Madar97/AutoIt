#include<INet.au3>
#include<GuiButton.au3>
#include<GuiToolBar.au3>
;#include<GuiConstansEx.au3>

$yourIp = _GetIP()

GUICreate("Ip Finder",318,84,294,169)
$button1 = GUICtrlCreateButton("Get Ip",  201, 30,82,23)
$input1 = GUICtrlCreateInput("Here shows your ip",28,31,138,20)
$label1 = GUICtrlCreateLabel("Get your Ip here:" , 19,14,284,15)
GUISetState(@SW_SHOW)

While 1
	$msg=GUIGetMsg()
 	If $msg=-3 Then Exit
	If $msg=$button1 Then button1()
WEnd

Func button1()
	GUICtrlSetData($input1,$yourIp)
	MsgBox(0,"Ip","You have aquired your IP")
EndFunc
