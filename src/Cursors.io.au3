Local $distance = 100

_Main()

Func _Main()
	_Init()
	_Run()
EndFunc

Func _Init()
	HotKeySet('{END}', '_Exit')
	HotKeySet('{UP}', '_MoveUp')
	HotKeySet('{DOWN}', '_MoveDown')
	HotKeySet('{LEFt}', '_MoveLeft')
	HotKeySet('{RIGHT}', '_MoveRight')
	HotKeySet('{SPACE}', '_Click')
EndFunc

Func _Run()
	While True
		Sleep(1000)
	WEnd
EndFunc

Func _MoveUp()
	Local $mouse = MouseGetPos()

	MouseMove($mouse[0], $mouse[1] - $distance, 0)
EndFunc

Func _MoveDown()
	Local $mouse = MouseGetPos()

	MouseMove($mouse[0], $mouse[1] + $distance, 0)
EndFunc

Func _MoveLeft()
	Local $mouse = MouseGetPos()

	MouseMove($mouse[0] - $distance, $mouse[1], 0)
EndFunc

Func _MoveRight()
	Local $mouse = MouseGetPos()

	MouseMove($mouse[0] + $distance, $mouse[1], 0)
EndFunc

Func _Click()
	MouseClick('primary')
EndFunc

Func _Exit()
	Exit
EndFunc
