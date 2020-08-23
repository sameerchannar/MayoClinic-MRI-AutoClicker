#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!Ins::ExitApp

;for programming and general writing
PgUp::Home
PgDn::End

;switch windows
XButton1::!Tab
Xbutton2::!Tab

;switch tabs
WheelRight::^Tab
WheelLeft::^+Tab

;snap around windows
LWin & WheelRight::#Right
LWin & WheelLeft::#Left
LWin & XButton2::#Up
LWin & XButton1::#Down

;adjust volume
~RButton & WheelDown::
send {Volume_Down}
return
~RButton & WheelUp::
send {Volume_Up}
return



;capslock and click means click every 0.5 seconds
~CapsLock & LButton::
while GetKeyState("CapsLock") {
	MouseClick, left
	Sleep, 100
}
~CapsLock & Down::
	MouseClick, left
return
~CapsLock & Up::
	MouseClick, left	









