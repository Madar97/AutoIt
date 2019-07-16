#include <GUIConstantsEx.au3>
#include <GuiComboBox.au3>

Global $fComboSelected = False

$hGUI = GUICreate("Test", 500, 500)

$cCombo = GUICtrlCreateCombo("", 10, 10, 200, 20)
GUICtrlSetData($cCombo, "1|2|3|4|5|6|7")

$cLV = GUICtrlCreateListView("Items      ", 250, 10, 200, 200)

GUISetState()

While 1

    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            Exit
        Case $cCombo
            ; Set flag to show new selection made
            $fComboSelected = True
            ConsoleWrite("Combo changed" & @CRLF) ; Just for dem0
    EndSwitch

    If $fComboSelected Then
        ; Check if dropdown closed
        If _GUICtrlComboBox_GetDroppedState($cCombo) = False Then
            ; Create LV item
            GUICtrlCreateListViewItem(GUICtrlRead($cCombo), $cLV)
            ; Clear flag
            $fComboSelected = False
        EndIf
    EndIf

WEnd
