extends Node2D
var platform = preload("res://platform.tscn") # Or load("res://Enemy.tscn")

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
