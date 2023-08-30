extends CharacterBody2D

const SPEED = 200.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var _animated_sprite = AnimatedSprite2D

func _physics_process(delta):
	var directionX = Input.get_axis("ui_left", "ui_right")
	var directionY = Input.get_axis("ui_up", "ui_down")


	if directionX || directionY:
		$AnimatedSprite2D.play("Andar")
		if Input.is_action_pressed("ui_right"):
			$AnimatedSprite2D.flip_h = false
		if Input.is_action_pressed("ui_left"):
			$AnimatedSprite2D.flip_h = true
		velocity.x = directionX * SPEED
		velocity.y = directionY * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.x, 0, SPEED)
		$AnimatedSprite2D.play("Parado")


	move_and_slide()
