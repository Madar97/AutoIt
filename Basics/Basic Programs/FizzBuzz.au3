;FizzBuzz If


For $i = 0 To 100 Step 1
	If (Mod($i,5) == 0) And (Mod($i,7) == 0) Then
		ConsoleWrite("FizzBuzz" & @CRLF)
	ElseIf (Mod($i,5) == 0) Then
		ConsoleWrite("Fizz" & @CRLF)
	ElseIf (Mod($i,7) == 0) Then
		ConsoleWrite("Fizz" & @CRLF)
	Else
		ConsoleWrite($i & @CRLF)
	EndIf
Next

ConsoleWrite(@CRLF & "While Ciklussal" & @CRLF)
;FizzBuzz Switch case and While loop

Local $j = 0
While $j <= 100
	Switch Int($j)
		Case (Mod($j,5) == 0) And (Mod($j,7)== 0)
			ConsoleWrite("FizzBuzz" & @CRLF)
		Case (Mod($j,5) == 0)
			ConsoleWrite("Fizz" & @CRLF)
		Case (Mod($j,3) == 0)
			ConsoleWrite("Buzz" & @CRLF)
		Case Else
			ConsoleWrite($j & @CRLF)
	EndSwitch
$j += 1
WEnd
