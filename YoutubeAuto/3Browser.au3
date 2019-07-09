#include<IE.au3>
#include<GUIConstants.au3>
#include<WindowsConstants.au3>

GUICreate("Obj tutorial", 582,535,600,600)
$button1=GUICtrlCreateButton("Go to URL", 243,33,66,69)
$input1 = GUICtrlCreateInput(" ",25,36,114,20)
$label1 = GUICtrlCreateLabel("Put Url here" ,27,20,42,15)
$oIE = _IECreateEmbedded()
$Object = GUICtrlCreateObj($oIE,10,150,500,500)
GUISetState(@SW_SHOW)

While 1
	$msg = GUIGetMsg()
	If $msg = - 3 Then Exit
	If $msg = $button1 Then button1()
WEnd

Func button1()
	$read1 = GUICtrlRead($input1)
	_IENavigate($oIE,$read1)
EndFunc
