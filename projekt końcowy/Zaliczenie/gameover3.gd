extends Control

func _ready():
	get_node("Label").text = "Game Over, " + global.yourName


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
