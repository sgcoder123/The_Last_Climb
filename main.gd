extends Node2D
var platform = preload("res://platform.tscn") # Or load("res://Enemy.tscn")
var hearts = 5
var duration = 50
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func newplatform():
	var clone = platform.instantiate()
	var x_axis = randi_range(200,1000)
	var platforms = get_tree().get_nodes_in_group("platforms")
	for node in platforms:
		var dist = abs(node.position.x - x_axis)
		while dist < clone.get_node("AnimatableBody2D/Platform_img").texture.get_width():
			x_axis = randi_range(200,1000)
			dist = abs(node.position.x - x_axis)
	clone.position.x = x_axis
	duration -= 1
	clone.duration = duration
	add_child(clone)
	


func _on_timer_timeout() -> void:
	newplatform() 



func _on_area_2d_body_entered(body: Node2D) -> void:
	pass
	if body == $Player:
		hearts -= 2
		if hearts < 5:
			$heart5.visible = false
		if hearts < 4:
			$heart4.visible = false
		if hearts < 3:
			$heart3.visible = false
		if hearts < 2:
			$heart2.visible = false
		if hearts < 1:
			$heart1.visible = false
		$Player.position.y = 0
		$Player.velocity.y = 0
	
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_1:
			hearts -= 2
		elif event.keycode == KEY_2:
			hearts -= 1
		elif event.keycode == KEY_3:
			hearts -= 3
		if hearts < 5:
			$heart5.visible = false
		if hearts < 4:
			$heart4.visible = false
		if hearts < 3:
			$heart3.visible = false
		if hearts < 2:
			$heart2.visible = false
		if hearts < 1:
			$heart1.visible = false
