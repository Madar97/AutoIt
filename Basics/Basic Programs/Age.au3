;Megkérdi mikor születtél és kiírja hány éves vagy

MsgBox(32,"Age", "This program will told ya how old are ya! ")
Local $Born = InputBox("Age","When were you born?",9999,"" )
;$Now = @YEAR not necessarry
$Age = @YEAR - $Born

MsgBox(64,"Your age" , "Your age is: " &$Age, 15)
