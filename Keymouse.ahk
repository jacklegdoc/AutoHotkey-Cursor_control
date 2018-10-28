; Mouse cursor control
; F24 key must be remapped to CaspLock key by ChangeKey
F24 & Up::
F24 & Down::
F24 & Left::
F24 & Right::
F24 & a::
F24 & h::
F24 & j::
F24 & k::
F24 & l::
F24 & s::
F24 & w::
	If (GetKeyState("s", "P")) {
		MouseClick, right
	}
	If (GetKeyState("w", "P")) {
		Send, {MButton}
	}
	If (GetKeyState("a", "P")) {
		Send, {LButton Down}
	}
	While (GetKeyState("F24", "P")) {
		MoveX := 0, MoveY := 0
		MoveY += GetKeyState("Up", "P") ? -25 : 0
		MoveY += GetKeyState("Down", "P") ? 25 : 0
		MoveX += GetKeyState("Left", "P") ? -25 : 0
		MoveX += GetKeyState("Right", "P") ? 25 : 0
		MoveY += GetKeyState("k", "P") ? -25 : 0
		MoveY += GetKeyState("j", "P") ? 25 : 0
		MoveX += GetKeyState("h", "P") ? -25 : 0
		MoveX += GetKeyState("l", "P") ? 25 : 0
		MoveY *= GetKeyState("Shift", "P") ? 0.2 : 1
		MoveX *= GetKeyState("Shift", "P") ? 0.2 : 1
		MoveY *= GetKeyState("LCtrl", "P") ? 0.04 : 1
		MoveX *= GetKeyState("LCtrl", "P") ? 0.04 : 1
		MouseMove, %MoveX%, %MoveY%, 0, R
		Sleep, 1
	}
	Send, {LButton Up}
	Return
