extends CanvasLayer

onready var fps_label = $DebugContainer/FPSContainer/FPSLabel


func _process(_delta: float) -> void:
	fps_label.text = str(int(Engine.get_frames_per_second()))

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("open_debug_ui"):
		if $DebugContainer.visible:
			$DebugContainer.hide()
			set_process(false)
		else:
			$DebugContainer.show()
			set_process(true)

