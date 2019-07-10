#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile_x64=program.Exe
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_Run_Au3Stripper=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
Run(@ScriptDir & '\setup.exe')
;Run('\setup.exe',@ScriptDir) ; NEM jó nem nyitja meg
AutoItSetOption('MouseCoordMode',0) ; active window alapján csinél mindent

WinWait("Welcome") ; ha ez felvillan akkor megy tovább csak a program
WinActivate("Welcome");fel teszi  a creenre
MouseClick("primary",528,481,1,0);

WinWait("Agreement")
WinActivate("Agreement")
MouseClick("primary",538,477,1,0);

; Aludjunk ha valamibol tobb van
;várjunk vmedig pl amikor megy a telepites ez minden gépnél egyedi

WinWait("Complete") ;Winwait("Complete","Thank you for installing") some text from Visible text
WinActivate("Complete")
MouseClick("primary",573,472,1,0)
