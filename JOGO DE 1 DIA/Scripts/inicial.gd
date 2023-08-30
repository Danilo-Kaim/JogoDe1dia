extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Cenas/fase1.tscn")

func _on_options_pressed():
	get_tree().change_scene_to_file("res://controls.tscn")

func _on_quit_pressed():
	get_tree().quit()

func _on_criadores_pressed():
	OS.shell_open('https://youtu.be/NgTpmVFILNo')




#coisas não importantes
func _on_easteregg_1_pressed():
	OS.shell_open('https://youtu.be/5uKm9Srhuz4')

func _on_easteregg_2_pressed():
	OS.shell_open('https://youtu.be/5UfSQq7C26M')

func _on_button_pressed():
	OS.shell_open('https://youtu.be/iFIXi6zzCls')

func _on_button_2_pressed():
	OS.shell_open('https://youtu.be/4T_RaeKVypY')
