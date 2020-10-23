extends Node

var sayHi = "Hello world"
var welcomes = ["hi", "cześć", "elo", "halko"]
var names = ["Karen", "Justyna", "Janusz", "Seba", "Sasin"]
var activities = ["yelling at pple", "spanko", "pytać, czy masz jakiś problem", "speak to your manager", " zmarnował 70 mln PLNów na wybory, które się nie odbyły "]

# Called when the node enters the scene tree for the first time.
func _ready():
	print (sayHi)
	print (welcomes[1] + " nazywam się " + names[1] + " i lubię " + activities[1])
	print (welcomes[0] + " my name is " + names[0] + " and I like " + activities[0] + " and I want to " + activities[3])
	print (welcomes[2] + " nazywam się " + names[3] + " i lubię " + activities[2])
	print ("Polska jest państwem z dykty")
	print (names[4] + activities[4])


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
