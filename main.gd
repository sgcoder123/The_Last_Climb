extends Node2D

@export var platform: PackedScene = preload("res://platform.tscn")
@export var hearts: int = 5
@export var duration: int = 50

@onready var player = $Player
@onready var heart_nodes = [$heart1, $heart2, $heart3, $heart4, $heart5]

func _ready() -> void:
	randomize()

func _process(_delta: float) -> void:
	pass

func newplatform():
	var clone = platform.instantiate()
	var x_axis = randi() % 801 + 200  # Range: 200 to 1000
	var platforms = get_tree().get_nodes_in_group("platforms")

	var platform_width = 100
	if clone.has_node("AnimatableBody2D/Platform_img"):
		var img_node = clone.get_node("AnimatableBody2D/Platform_img")
		if img_node.has_method("get_texture"):
			var tex = img_node.texture
			if tex:
				platform_width = tex.get_width()

	var attempts = 0
	while attempts < 10:
		var overlap = false
		for node in platforms:
			if node.is_queued_for_deletion():
				continue
			var dist = abs(node.position.x - x_axis)
			if dist < platform_width:
				overlap = true
				break
		if not overlap:
			break
		x_axis = randi() % 801 + 200
		attempts += 1

	clone.position.x = x_axis
	duration = max(0, duration - 1)

	if clone.has_method("set_duration"):
		clone.set_duration(duration)

	add_child(clone)
	duration -= 1
	
func _on_timer_timeout() -> void:
	newplatform()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == player:
		if player.lava_immunity:
			player.lava_immunity = false
			player.position.y = 0
			player.velocity.y = 0
			return
		hearts = max(0, hearts - 3)
		update_hearts_ui()
		if hearts >= 1:
			player.position.y = 0
			player.velocity.y = 0
		if hearts == 0:
			get_tree().change_scene_to_file("res://dead.tscn")
func _input(event):
	if event is InputEventKey and event.pressed:
		match event.keycode:
			KEY_1:
				hearts = max(0, hearts - 1)
			KEY_2:
				hearts = max(0, hearts - 2)
				player.lava_immunity = true
	
		update_hearts_ui()
func update_hearts_ui():
	for i in range(5):
		heart_nodes[i].visible = hearts > i
