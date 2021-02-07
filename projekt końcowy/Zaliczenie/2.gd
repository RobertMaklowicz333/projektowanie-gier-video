extends Node2D

func _ready():
	get_node("CanvasLayer/Panel/Label").text = "Player:" + global.yourName
