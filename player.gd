extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -600.0
var double = false
var double_jump_enabled = false 
var lava_immunity = false


var completed = []
var score = str(completed.size)
@onready var score_label = $Score
func _score():
	score_label.text = "Player Score:" + score
func _physics_process(delta: float) -> void:	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Handle jump.
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
			if double_jump_enabled:  
				double = true
		elif double == true and double_jump_enabled:
			double = false
			velocity.y = JUMP_VELOCITY
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision.get_collider() is AnimatableBody2D:
			if not completed.has(collision.get_collider().get_instance_id()):
				completed.append(collision.get_collider().get_instance_id())
				print(collision.get_collider().get_instance_id())
				print(completed)
	
func _process(_delta: float) -> void:
	if $Knight10 == null:
		return
	if velocity.x > 0:
		$Knight10.flip_h = false
	elif velocity.x < 0:
		$Knight10.flip_h = true
	if Input.is_key_pressed(KEY_1):
		double_jump_enabled = true
	if Input.is_key_pressed(KEY_2):
		lava_immunity = true
