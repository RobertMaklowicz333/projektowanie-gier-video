extends Area2D

const SPEED = 500
var velocity = Vector2()
var direction = 1

func _ready():
	pass # Replace with function body.

func set_magicattack_direction(dir):
	direction = dir
	if dir == -1:  
		$AnimatedSprite.flip_h = false #true

func _physics_process(delta):
	velocity.x = SPEED * delta  * direction
	translate(velocity)
	$AnimatedSprite.play("shoot")

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_magiattack_body_entered(body):
	if "Enemy1" in body.name:
		body.dead()
	queue_free()
	if "worm" in body.name:
		body.dead()
	queue_free()
	if "wonsz" in body.name:
		body.dead()
	queue_free()
	if "goblin" in body.name:
		body.dead()
	if "Skeleton" in body.name:
		body.dead()
