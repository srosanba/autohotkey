#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; User-specified Options 
#SingleInstance force
#Hotstring EndChars `n`t

; Let the AHK begin 

;--- toggle primary mouse button with Windows+a ---
#a::
   Run, "H:\AutoHotKey\mouse.lnk.lnk"
   sleep 250
   send {Space}
   Send {Enter}
Return

;--- launch UltraEdit ---
#u::Run Uedit32.exe

;--- launch calculator ---
#c::Run calc.exe
