extends Control

func _ready():
	get_node("Panel/Label").text = "Congratulations," + global.yourName + ", you defeated evil narrator and remained invincible"



func _on_Button_pressed():
	get_tree().change_scene("res://titlescreen.tscn")
