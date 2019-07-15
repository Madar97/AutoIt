#include-once

#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <ButtonConstants.au3>
#include <StaticConstants.au3>


;file open
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
#include <Word.au3>


#Region ;==> GUI
$Form1 = GUICreate("Iktatás", 320, 240, -1, -1)
$File = GUICtrlCreateMenu("&Fálj")
$Exit = GUICtrlCreateMenuItem("&Kilépés" & @TAB & "Esc", $File)

$Tools = GUICtrlCreateMenu("&Eszközök")
$Settings = GUICtrlCreateMenuItem("&Beállítások..." & @TAB & "Ctrl+F", $Tools)
$Profil = GUICtrlCreateMenuItem("&Profilváltás....", $Tools)
$empty1 = GUICtrlCreateMenuItem("", $Tools)
$Tomeges = GUICtrlCreateMenuItem("&Tömeges iktatás", $Tools)
$empty1 = GUICtrlCreateMenuItem("", $Tools)
$Sajat = GUICtrlCreateMenuItem("&Saját iktatás...", $Tools)

$Help = GUICtrlCreateMenu("&Súgó")
$HelpParent = GUICtrlCreateMenuItem("&Súgó" & @TAB & "F1", $Help)
$About = GUICtrlCreateMenuItem("&Névjegy/Hibabejelentés", $Help)

Dim $Form1_AccelTable[3][2] = [["{ESC}", $Exit], ["^f", $Settings], ["{F1}", $HelpParent]]
GUISetAccelerators($Form1_AccelTable)
GUISetState(@SW_SHOW)
#EndRegion ;==> GUI

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Exit
			exit1()
		Case $Settings
			settings()
		Case $Profil
			profil()
		Case $Tomeges
			tomeges()
		Case $Sajat
			sajat()
		Case $HelpParent
			helparent()
		Case $About
			about()
	EndSwitch
WEnd

#Region ;==> Menü Függvények
Func exit1() ;kilép függvény
	#Region --- CodeWizard generated code Start ---
	;MsgBox features: Title=Yes, Text=Yes, Buttons=Yes and No, Icon=Question
	If Not IsDeclared("iMsgBoxAnswer") Then Local $iMsgBoxAnswer
	$iMsgBoxAnswer = MsgBox(36, "Kilépés", "Biztos ki akar lépni?")

	Select
		Case $iMsgBoxAnswer = 6 ;Yes
			Exit
		Case $iMsgBoxAnswer = 7 ;No

	EndSelect
	#EndRegion --- CodeWizard generated code Start ---
EndFunc   ;==>exit1

Func settings()
	MsgBox(0, "S", "beallitasok")
EndFunc   ;==>settings

Func profil()
	MsgBox(0, 'a', "Profilváltás")
EndFunc   ;==>profil

Func tomeges()
	If BitAND(GUICtrlRead($Tomeges), $GUI_UNCHECKED) Then
		;MsgBox(0, "", "unnit was checked")
		GUICtrlSetState($Tomeges, $GUI_CHECKED)
	Else
		;MsgBox(0, "", "unnit was unchecked")
		GUICtrlSetState($Tomeges, $GUI_UNCHECKED)
	EndIf
EndFunc   ;==>tomeges

Func sajat()
	MsgBox(0, "sajat", "Saját iktatás")
EndFunc   ;==>sajat

Func helparent()

	;_Word_DocOpen
	;Local $oWord =

	ShellExecute(@ScriptDir & "\Dokumentacio.docx")
	If @error Then
		MsgBox(48, "Hiba", "Hiba a Dokumentáció.docx megnyitásakor.")
	EndIf

EndFunc   ;==>helparent

Func about()
	;MsgBox features: Title=Yes, Text=Yes, Buttons=OK, Icon=Info
	MsgBox(64, "Iktató program", "Hibabejelentés: " & @CRLF & "Minden jog fenntartva" & @CRLF & "Verziószám:" & @CRLF & "Utolsó stabil verzió kiadásának dátuma: 2019.09.01." & @CRLF & "További frissítések:" & @CRLF & "Programleírás a felhasználói és fejlesztoi dokumentációban" & @CRLF & "Készítok:" & @CRLF)
EndFunc   ;==>about
#EndRegion ;==> Menü Függvények
