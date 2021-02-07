extends Control

func _ready():
	$VBoxContainer/srodek/buttons/yourname.text = "What is your name?"



func _on_LineEdit_text_entered(new_text):
	$VBoxContainer/srodek/buttons/Label2.text = "Okay, " + new_text + " let's go then, shall we?"
	$VBoxContainer/srodek/buttons/Node2D.visible = true
	global.yourName = new_text
