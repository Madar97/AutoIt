; Convert Celsius to Fahrenheit or Fahrenheit to Celsius

; 2 essentail functions
;CelsToFahr()
;FahToCels()



#Region
;MsgBox features: Title=Yes, Text=Yes, Buttons=Yes, No, and Cancel, Icon=Question
If Not IsDeclared("iMsgBoxAnswer") Then Local $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(35,"Press the appropriate button" , "If you want to convert Celsius to Fahrenheit press YES,"  & @CRLF & "if you want to convert Fahrenheit to Celsius press NO," & @CRLF &"for quitting press CANCEL")
Select
	Case $iMsgBoxAnswer = 6 ; namely Yes
		CelsToFahr()
	Case $iMsgBoxAnswer = 7 ; namely No
		FahrToCels()
	Case $iMsgBoxAnswer = 2 ; namely Cancel
		Exit
EndSelect
#EndRegion

Func CelsToFahr()
	$CelsDegree = InputBox("Celsius to Fahrenheit", "How many Celsius degree: ", "")
	$FahrDegree = $CelsDegree * 33.8
	MsgBox(64,"Celsius to Fahrenheit", $CelsDegree & "° C is: " & $FahrDegree  & "°F.")
EndFunc

Func FahrToCels()
	$FahrDegree = InputBox("Fahrenheit to Celsius  ", "How many Fahrenheit degree: " , "")
	$CelsDegree = $FahrDegree / 33.8
	MsgBox(64,"Fahrenheit to Celsius" , $FahrDegree & "°F is: " & $CelsDegree & "°C .")
EndFunc

