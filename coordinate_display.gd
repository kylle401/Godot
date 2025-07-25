extends Label


func _process(delta):
	
	var crosshair_coord = floor($"../Crosshair".position / 72)
	
	text = "coordinate: " + str(crosshair_coord)
