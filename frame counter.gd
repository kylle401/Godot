extends Label

func _process(delta) -> void:
	text = "frames: " + str(Engine.get_frames_per_second())
