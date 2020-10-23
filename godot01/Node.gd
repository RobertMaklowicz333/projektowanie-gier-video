extends Node

var sayHi = "Hello world"
var welcomes = ["hi", "cześć", "priviet"]
var names = ["Karen", "Justyna", "Sasza"]

# Called when the node enters the scene tree for the first time.
func _ready():
	print (sayHi)
	print (welcomes[1] + " nazywam się " + names[1])
	print (welcomes[0] + " my name is " + names[0])


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
