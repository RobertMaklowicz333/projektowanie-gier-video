extends Control

func _ready():
	get_node("text").text = "Game Over, " + global.yourName
