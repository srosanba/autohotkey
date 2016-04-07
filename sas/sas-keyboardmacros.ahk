#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; User-specified Options 
#SingleInstance force
#Hotstring EndChars `n`t



; ------------------------------------------------------------------------------   
; ---------- Let the keyboard macros begin ----------
; ------------------------------------------------------------------------------   


; ---------- add /* */ comment, 
; ---------- starting at current curser position, 
; ---------- ending at end of current line
; ---------- ^ = Ctrl, ! = Alt, so ^!/ = Ctrl+Alt+/

^!/::
   send, /*{End}*/
Return


; ---------- add current date in YYYY-MM-DD format, 
; ---------- followed by my name 
; ---------- useful when adding a line to program history 
; ---------- ^ = Ctrl, ! = Alt, so ^!r = Ctrl+Alt+r

^!r::
   send, %A_YYYY%-%A_MM%-%A_DD%{Tab}Your Name Here{Tab}
Return
