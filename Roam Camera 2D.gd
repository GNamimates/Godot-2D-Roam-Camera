extends Camera2D

var holding = false

func _input(event):
	#if the current used camera is this
	if get_viewport().get_camera() == self:
		if event is InputEventMouseButton:
			
			if event.button_index == BUTTON_RIGHT:
				holding = event.is_pressed()
		
		if event is InputEventMouseMotion:#drag
			if holding:
				position -= event.relative*zoom
		
		if event is InputEventMouseButton:#zoom
			if event.button_index == BUTTON_WHEEL_UP:
				zoom *= 0.95
			if event.button_index == BUTTON_WHEEL_DOWN:
				zoom *= 1.05
#basic stuff
