extends Node2D

var fase3 = "res://Cenas/fase3.tscn"
# Called when the node enters the scene tree for the first time.


func _on_objetivo_fase_completa():
	get_tree().change_scene_to_file(fase3)
	pass # Replace with function body.
