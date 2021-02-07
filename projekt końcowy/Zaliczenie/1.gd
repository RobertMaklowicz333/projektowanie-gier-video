extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("HUD/imie/imie").text = "Player:" + global.yourName

