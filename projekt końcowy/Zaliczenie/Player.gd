extends KinematicBody2D
onready var Sprite = get_node("Sprite")

const magicattack = preload("res://magiattack.tscn")

export (int) var speed = 500
export (int) var jump_speed = -1000
export (int) var gravity = 4000
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25

var velocity = Vector2.ZERO
var anim = "idle"

func get_input():
	var dir = 0
	if Input.is_action_pressed("walk_right"):
		dir += 1
	if Input.is_action_pressed("walk_left"):
		dir -= 1
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	else:
		velocity.x = lerp(velocity.x, 0, friction)
	
	
func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = jump_speed
	if abs(velocity.x) < 10:
		velocity.x = 0
		
	if velocity.x == 0:
		anim = "idle"
	else:
		anim = "run"
	if velocity.x > 0:
		Sprite.set_flip_h(false)
		if sign($Position2D.position.x) == -1:
			$Position2D.position.x *= -1
	elif velocity.x < 0:
		Sprite.set_flip_h(true)
		if sign($Position2D.position.x) == 1:
			$Position2D.position.x *= -1
	Sprite.play(anim)
	
	if Input.is_action_just_pressed("LPM"):
		var attack = magicattack.instance()
		if sign($Position2D.position.x) == 1:
			attack.set_magicattack_direction(1)
		else:
			attack.set_magicattack_direction(-1)
		get_parent().add_child(attack)
		attack.position = $Position2D.global_position
		
		
	

func kill():
	get_tree().change_scene("res://gameover.tscn")
	
func kill2():
	get_tree().change_scene("res://gameover2.tscn")
	

func kill3():
	get_tree().change_scene("res://gameover3.tscn")


func _on_kill_body_entered(body):
	get_tree().change_scene("res://gameover.tscn")


func _on_Area2D_body_entered(body):
	if "Enemy1" in body.name:
		kill()
	if "worm" in body.name:
		kill2()
	if "wonsz" in body.name:
		kill3()
	if "goblin" in body.name:
		kill3()
	if "Skeleton" in body.name:
		kill3()


func _on_next_body_entered(body):
	get_tree().change_scene("res://2.tscn")


func _on_killzone_body_entered(body):
	get_tree().change_scene("res://gameover2.tscn")


func _on_next2_body_entered(body):
	get_tree().change_scene("res://3.tscn")


func _on_killzone2_body_entered(body):
	get_tree().change_scene("res://gameover3.tscn")


func _on_end_body_entered(body):
	get_tree().change_scene("res://win.tscn")
