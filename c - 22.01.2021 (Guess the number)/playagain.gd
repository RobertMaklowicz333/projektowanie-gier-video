extends Button

func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_playagain_pressed():
	get_tree().change_scene("res://1.tscn")
