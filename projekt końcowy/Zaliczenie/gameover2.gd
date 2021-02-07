extends Control

func _ready():
	get_node("Label").text = "Game Over, " + global.yourName
