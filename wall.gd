extends Sprite2D



var bot_occupied = false
var top_occupied = false
var left_occupied = false
var right_occupied = false
var bot_left_occupied = false
var bot_right_occupied = false
var top_left_occupied = false
var top_right_occupied = false

func _process(delta: float) -> void:
	#check for neighbor without regard for corner
	if not(bot_occupied || top_occupied || left_occupied || right_occupied):
		texture = load("res://images/wall/wall_block.png")
	if top_occupied && not(bot_occupied || left_occupied || right_occupied):
		texture = load("res://images/wall/wall_edge_vert.png")
		flip_h = false
		flip_v = false
	if bot_occupied && not(top_occupied || left_occupied || right_occupied):
		texture = load("res://images/wall/wall_edge_vert.png")
		flip_h = false
		flip_v = true
	if top_occupied && bot_occupied && not(left_occupied || right_occupied):
		texture = load("res://images/wall/wall_edge_double_vert.png")
	if left_occupied && not(bot_occupied || top_occupied || right_occupied):
		texture = load("res://images/wall/wall_edge_hor.png")
		flip_h = false
		flip_v = false
	if right_occupied && not(bot_occupied || top_occupied || left_occupied):
		texture = load("res://images/wall/wall_edge_hor.png")
		flip_h = true
		flip_v = false
	if left_occupied && right_occupied && not(bot_occupied || top_occupied):
		texture = load("res://images/wall/wall_edge_double_hor.png")
	if bot_occupied && right_occupied && not(top_occupied || left_occupied):
		texture = load("res://images/wall/wall_double_corner_a.png")
		flip_h = false
		flip_v = false
	if bot_occupied && left_occupied && not(top_occupied || right_occupied):
		texture = load("res://images/wall/wall_double_corner_a.png")
		flip_h = true
		flip_v = false
	if top_occupied && right_occupied && not(bot_occupied || left_occupied):
		texture = load("res://images/wall/wall_double_corner_a.png")
		flip_h = false
		flip_v = true
	if top_occupied && left_occupied && not(bot_occupied || right_occupied):
		texture = load("res://images/wall/wall_double_corner_a.png")
		flip_h = true
		flip_v = true
	if top_occupied && bot_occupied && right_occupied && not(left_occupied):
		texture = load("res://images/wall/wall_edge_double_corner_a.png")
		flip_h = false
		flip_v = false
	if top_occupied && bot_occupied && left_occupied && not(right_occupied):
		texture = load("res://images/wall/wall_edge_double_corner_a.png")
		flip_h = true
		flip_v = false
	if bot_occupied && left_occupied && right_occupied && not(top_occupied):
		texture = load("res://images/wall/wall_edge_double_corner_b.png")
		flip_h = false
		flip_v = false
	if top_occupied && left_occupied && right_occupied && not(bot_occupied):
		texture = load("res://images/wall/wall_edge_double_corner_b.png")
		flip_h = false
		flip_v = true
	if bot_occupied && top_occupied && left_occupied && right_occupied:
		texture = load("res://images/wall/wall_corner_in_e.png")

#	check for neighbor WITH regard for corner(WIP)

	if top_occupied && left_occupied && top_left_occupied:
		texture = load("res://images/wall/wall_corner.png")
		flip_h = false
		flip_v = false
	if top_occupied && right_occupied && top_right_occupied:
		texture = load("res://images/wall/wall_corner.png")
		flip_h = true
		flip_v = false
	if bot_occupied && left_occupied && bot_left_occupied:
		texture = load("res://images/wall/wall_corner.png")
		flip_h = false
		flip_v = true
	if bot_occupied && right_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_corner.png")
		flip_h = true
		flip_v = true
	if top_occupied && bot_occupied && left_occupied && top_left_occupied:
		texture = load("res://images/wall/wall_corner_edge_b.png")
		flip_h = true
		flip_v = false
	if top_occupied && left_occupied && right_occupied && top_left_occupied:
		texture = load("res://images/wall/wall_corner_edge_a.png")
		flip_h = false
		flip_v = true
	if top_occupied && bot_occupied && right_occupied && top_right_occupied:
		texture = load("res://images/wall/wall_corner_edge_b.png")
		flip_h = false
		flip_v = false
	if top_occupied && left_occupied && right_occupied && top_right_occupied:
		texture = load("res://images/wall/wall_corner_edge_a.png")
		flip_h = true
		flip_v = true
	if left_occupied && bot_occupied && right_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_corner_edge_a.png")
		flip_h = true
		flip_v = false
	if top_occupied && bot_occupied && right_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_corner_edge_b.png")
		flip_h = false
		flip_v = true
	if top_occupied && left_occupied && bot_occupied &&bot_left_occupied:
		texture = load("res://images/wall/wall_corner_edge_b.png")
		flip_h = true
		flip_v = true
	if right_occupied && left_occupied && bot_occupied &&bot_left_occupied:
		texture = load("res://images/wall/wall_corner_edge_a.png")
		flip_h = false
		flip_v = false
	if top_occupied && left_occupied && bot_occupied && right_occupied && top_left_occupied:
		texture = load("res://images/wall/wall_corner_in_f.png")
		flip_h = false
		flip_v = false
	if top_occupied && left_occupied && bot_occupied && right_occupied && top_right_occupied:
		texture = load("res://images/wall/wall_corner_in_f.png")
		flip_h = true
		flip_v = false
	if top_occupied && left_occupied && bot_occupied && right_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_corner_in_f.png")
		flip_h = true
		flip_v = true
	if top_occupied && left_occupied && bot_occupied && right_occupied && bot_left_occupied:
		texture = load("res://images/wall/wall_corner_in_f.png")
		flip_h = false
		flip_v = true
	if top_occupied && bot_occupied && left_occupied && top_left_occupied && bot_left_occupied:
		texture = load("res://images/wall/wall_edge_side.png")
		flip_h = false
		flip_v = false
	if top_occupied && bot_occupied && right_occupied && top_right_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_edge_side.png")
		flip_h = true
		flip_v = false
	if top_occupied && right_occupied && left_occupied && top_left_occupied && top_right_occupied:
		texture = load("res://images/wall/wall_edge_south.png")
		flip_h = false
		flip_v = false
	if bot_occupied && right_occupied && left_occupied && bot_left_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_edge_south.png")
		flip_h = false
		flip_v = true
	if bot_occupied && right_occupied && left_occupied && bot_left_occupied && top_right_occupied && top_occupied:
		texture = load("res://images/wall/wall_corner_in_g.png")
		flip_h = false
		flip_v = false
	if bot_occupied && right_occupied && left_occupied && top_left_occupied && bot_right_occupied && top_occupied:
		texture = load("res://images/wall/wall_corner_in_g.png")
		flip_h = true
		flip_v = false
	if top_occupied && bot_occupied && right_occupied && left_occupied && top_left_occupied && top_right_occupied:
		texture = load("res://images/wall/wall_corner_in_b.png")
		flip_h = false
		flip_v = false
	if bot_occupied && top_occupied && right_occupied && left_occupied && bot_left_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_corner_in_b.png")
		flip_h = false
		flip_v = true
	if top_occupied && bot_occupied && right_occupied && left_occupied && top_left_occupied && bot_left_occupied:
		texture = load("res://images/wall/wall_corner_in_c.png")
		flip_h = false
		flip_v = false
	if top_occupied && bot_occupied && left_occupied && right_occupied && top_right_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_corner_in_c.png")
		flip_h = true
		flip_v = false
	if top_occupied && bot_occupied && right_occupied && left_occupied && top_left_occupied && top_right_occupied && bot_left_occupied:
		texture = load("res://images/wall/wall_corner_in_a.png")
		flip_h = false
		flip_v = false
	if top_occupied && bot_occupied && right_occupied && left_occupied && top_left_occupied && top_right_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_corner_in_a.png")
		flip_h = true
		flip_v = false
	if top_occupied && bot_occupied && right_occupied && left_occupied && top_left_occupied && bot_left_occupied && top_right_occupied:
		texture = load("res://images/wall/wall_corner_in_a.png")
		flip_h = false
		flip_v = false
	if top_occupied && bot_occupied && right_occupied && left_occupied && top_left_occupied && bot_left_occupied && bot_right_occupied:
		texture = load("res://images/wall/wall_corner_in_a.png")
		flip_h = false
		flip_v = true
	if top_occupied && bot_occupied && left_occupied && right_occupied && top_right_occupied && bot_right_occupied && bot_left_occupied:
		texture = load("res://images/wall/wall_corner_in_a.png")
		flip_h = true
		flip_v = true
	#if bot_occupied && not(top_occupied || left_occupied || right_occupied || bot_left_occupied || bot_right_occupied || top_left_occupied || top_right_occupied):
		#texture = load("res://images/wall/wall_edge_vert.png")
		#flip_h = false
		#flip_v = true
	if bot_occupied && top_occupied && left_occupied && right_occupied && bot_left_occupied && bot_right_occupied && top_left_occupied && top_right_occupied:
		texture = load("res://images/wall/wall_block_2.png")

func _on_top_area_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		top_occupied = true
		print("top")

func _on_top_area_exited(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		top_occupied = false


func _on_bot_area_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		bot_occupied = true


func _on_bot_area_exited(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		bot_occupied = false


func _on_left_area_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		left_occupied = true


func _on_left_area_exited(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		left_occupied = false


func _on_right_area_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		right_occupied = true


func _on_right_area_exited(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		right_occupied = false


func _on_top_left_area_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		top_left_occupied = true


func _on_top_left_area_exited(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		top_left_occupied = false


func _on_top_right_area_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		top_right_occupied = true


func _on_top_right_area_exited(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		top_right_occupied = false


func _on_bot_left_area_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		bot_left_occupied = true


func _on_bot_left_area_exited(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		bot_left_occupied = false


func _on_bot_right_area_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		bot_right_occupied = true


func _on_bot_right_area_exited(area: Area2D) -> void:
	if area.get_parent().is_in_group("wall"):
		bot_right_occupied = false
