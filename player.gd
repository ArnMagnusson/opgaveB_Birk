extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):

	# Handle jump.
	var up_direction = Input.get_axis("w", "s")
	if up_direction:
		velocity.y = up_direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("a", "d")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
