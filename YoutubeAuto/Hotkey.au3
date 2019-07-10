
HotKeySet('h', 'HotKey1')
HotKeySet('p', 'HotKey2')
HotKeySet('+x' , 'ExitProgram')

While 1
	Sleep(50)
WEnd

Func HotKey1()
	ConsoleWrite("The hothey was pressed" & @CRLF)
	;MsgBox(0,"Pressed","Hotkey pressed!")
EndFunc ; ==> hotkey1

Func HotKey2()
	;ConsoleWrite("The hothey p was pressed" & @CRLF)
	;MsgBox(0,"Prerssed","Hotkey pressed!")
	Run("notepad.exe")
EndFunc ; ==> hotkey1

Func ExitProgram()
	Exit
EndFunc
ToolTip("This is a tooltip", 0, 0)
;More information in https://www.autoitscript.com/autoit3/docs/functions/HotKeySet.htm
