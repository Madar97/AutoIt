$h = InputBox("Teglalap","Addj meg szarmot", "","-")
$m = InputBox("Teglalap","Addj meg szamot","","|")
For $k = 0 To $h - 1 Step 1
	ConsoleWrite(@CRLF)
	ConsoleWrite("0")
			For $l = 0 To $m - 1  Step 1
			ConsoleWrite("0")
		Next
Next
ConsoleWrite(@CRLF)
