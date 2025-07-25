extends Sprite2D

var coords


func _process(delta):
	var mouse_pos = get_viewport().get_mouse_position()
	
	position.x = round_to_interval(mouse_pos.x, 72)
	position.y = round_to_interval(mouse_pos.y, 72)
	
	coords = Vector2(position.x, position.y	)
	

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("m1"):
		if not coords in Global.walls:
			print("click")
			var clone = get_node("../wall").duplicate()
			clone.position = coords
			get_parent().add_child(clone)
			Global.walls[coords] = {
				"object": "wall",
				"reference": clone
			}
		else:
			if coords in Global.walls:
				Global.walls[coords]["reference"].queue_free()
				Global.walls.erase(coords)

func round_to_interval(num, interval):
	return int(round((num + interval / 2) / interval)) * interval - interval / 2

func isOccupied(pos):
	for i in Global.walls:
		if i["coords"] == pos:
			return true
	return false
