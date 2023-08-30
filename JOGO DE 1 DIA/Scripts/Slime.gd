extends CharacterBody2D

var player = null
var speed = 160
var estados = 'parado'
var game_over = "res://Cenas/game_over.tscn"

func _process(_delta):
	match estados:
		'parado':
			velocity = Vector2.ZERO
			if player:
				estados = 'seguindo'
			pass
		'seguindo':
			if player:
				velocity = position.direction_to(player.global_position) * speed
			else: 
				estados = 'parado'
	move_and_slide()
	



func _on_area_2d_3_body_entered(body):
	if body.name == 'Player':
		player = body
	pass # Replace with function body.


func _on_area_2d_3_body_exited(body):
	if body.name == 'Player':
		player = null
	pass # Replace with function body.


func _on_area_2d_4_body_entered(body):
	if body.name == 'Player':
		get_tree().change_scene_to_file(game_over)
	
	pass # Replace with function body.
