extends KinematicBody2D

var movespeed = 500


func _ready():
	pass # Replace with function body.

func _physics_process(delta): #polecane w jednym z poradników, z których korzystam
	var motion = Vector2()
	if Input.is_action_pressed("up"):
		motion.y -= 1
	if Input.is_action_pressed("down"):
		motion.y += 1
	if Input.is_action_pressed("right"):
		motion.x += 1
	if Input.is_action_pressed("left"):
		motion.x -= 1
	#to wszystko co powyżej, to zupełnie jak na zajęciach, to co poniżej zaś to fuzja z paru poradników)
	motion = motion.normalized()
	motion = move_and_slide(motion * movespeed)
	
	look_at(get_global_mouse_position()) #nie znałam tego wcześniej, ale w jednym z poradników ktoś to polecił i wytłumaczył (chodzi o to, żeby można było mierzyć tam, gdzie znajduje się myszka)
