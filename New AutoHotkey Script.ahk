﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;----- User-specified Options -----
#Hotstring EndChars `n`t
#SingleInstance force

;----- Hotstring #1 -----
::imho::in my humble opinion

;----- Hotstring #2 -----
::_better::
(
in my humble opinion
)

;----- Multiline hotstring -----
::_lgcomm::
(
*--------------------------------------------------;
*----- -----;
*--------------------------------------------------;
)