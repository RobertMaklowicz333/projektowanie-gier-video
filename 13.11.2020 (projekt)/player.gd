extends KinematicBody2D

var movespeed = 500
var bullet_speed = 2000
var bullet = preload("res://Bullet.tscn") #czyli najpierw zrobiłam scenę z tym pociskiem, teraz wykorzystuję w kodzie na bazie sugestii z poradnika
#teraz trzeba napisać funkcję fire i znajdzie się ona pod kodem poruszania się

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
	
	if Input.is_action_just_pressed("LPM"):
		fire()

func fire():
	var bullet_instance = bullet.instance()
	bullet_instance.position = get_global_mouse_position() #na to oczywiście sama nie wpadłam, ale po przeczytaniu o tym ma to oczywiście sens
	bullet_instance.rotation_degrees = rotation_degrees
	bullet_instance.apply_impulse(Vector2(), Vector2(bullet_speed,0).rotated(rotation))
	get_tree().get_root().call_deffered("add_child",bullet_instance)
