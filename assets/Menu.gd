extends Control

func _ready():
	 $MenuContainer/Play.grab_focus()

func _on_Play_pressed():
	get_tree().change_scene("res://Main.tscn")



func _on_Options_pressed():
	pass # Replace with function body.


func _on_Quit_pressed():
	get_tree().quit()
