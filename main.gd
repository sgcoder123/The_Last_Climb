extends Node2D
var platform = preload("res://platform.tscn") # Or load("res://Enemy.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func newplatform():
	var clone = platform.instantiate()
	var x_axis = randi_range(200,1000)
	clone.position.x = x_axis
