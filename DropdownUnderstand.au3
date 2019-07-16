https://www.autoitscript.com/forum/topic/180424-dropdown-list/
kiirral

#include <GuiComboBox.au3>
#include <GUIConstantsEx.au3>
#include <array.au3>
#include <File.au3>
#include <ComboConstants.au3>
#include <WindowsConstants.au3>


Const $sCSV = @ScriptDir & "\2cbo.CSV"
ConsoleWrite("sCSV valtozo:" & $sCSV & @CRLF)
Const $sElect = ""

Dim $a_sCSV, $aSplit, $scboChr = ""
_FileReadToArray($sCSV, $a_sCSV)
ConsoleWrite("$a_sCSV valtozo:" &  $a_sCSV & @CRLF)
Dim $aCSV[$a_sCSV[0]][2]

ConsoleWrite("Ubound $a_sCSV valtozo:" &  UBound($a_sCSV) & @CRLF)

For $i = 1 To UBound($a_sCSV) - 1

	ConsoleWrite($i & $a_sCSV[$i] & @CRLF)
	$aSplit = StringSplit($a_sCSV[$i], ";") ; itt ; volt
	If Not StringInStr($scboChr, $aSplit[1]) Then $scboChr &= $aSplit[1] & "|"
	$aCSV[$i - 1][0] = $aSplit[1]
	$aCSV[$i - 1][1] = $aSplit[2]
Next
ConsoleWrite($scboChr & @CRLF)

Global $temp = " "
Global $temp2 = " "

$hGui = GUICreate("Komboboxok ", 250, 120, 302, 218)
$hcboChr = GUICtrlCreateCombo($sElect, 8, 8, 200, 25, $CBS_DROPDOWNLIST + $WS_VSCROLL)
GUICtrlSetData(-1, $scboChr) ;belerakjaa combo boxba
$hcboChrNr = GUICtrlCreateCombo("", 8, 35, 200, 25, $CBS_DROPDOWNLIST + $WS_VSCROLL)
$hbtnExit = GUICtrlCreateButton("&Választ", 8, 65)

GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $hbtnExit
			$temp = GUICtrlRead($hcboChr)
			$temp2 = GUICtrlRead($hcboChrNr)
           MsgBox($MB_SYSTEMMODAL, "", "You chose: " & $temp & " -and- " & $temp2)
		Case $hcboChr
			$sVal = GUICtrlRead($hcboChr)
			If $sVal <> $sElect Then
				$aSplit = _ArrayFindAll($aCSV, $sVal, 0, 0, True, True, 0)
				GUICtrlSetData($hcboChrNr, "")
				$scboChr = ""
				For $i = 0 To UBound($aSplit) - 1
					$scboChr &= $aCSV[$aSplit[$i]][1] & "|"
				Next
				ConsoleWrite($scboChr & @CRLF)
				GUICtrlSetData($hcboChrNr, $scboChr)
				_GUICtrlComboBox_SetCurSel($hcboChrNr, 0)
			EndIf
	EndSwitch
WEnd
