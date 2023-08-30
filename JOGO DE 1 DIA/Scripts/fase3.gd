extends Node2D

var inicial = "res://Cenas/inicial.tscn"

func _on_objetivo_fase_completa():
	get_tree().change_scene_to_file(inicial)
	pass # Replace with function body.
