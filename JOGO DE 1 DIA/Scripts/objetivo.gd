extends CharacterBody2D
var player = null
signal fase_completa

func _on_area_2d_body_entered(body):
	if body.name == 'Player':
		emit_signal('fase_completa')
	pass

