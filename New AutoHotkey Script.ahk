;----- Default Options -----
﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;----- User-specified Options -----
#Hotstring EndChars `n`t
#SingleInstance force

;----- Your first hotstring -----
::imho::in my humble opinion

;----- A multi-line hotstring -----
::commblock::
(
*--------------------------------------------------;
*---------- ----------;
*--------------------------------------------------;
)
