extends KinematicBody2D

var motion = Vector2()

func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	var Player = get_parent().get_node("Player") #biedny batman ;( ; żeby enemy ,,identyfikował" pozycję gracza
	
	position += (Player.position - position)/50 #żeby enemy ruszał się w kierunku gracza; porusza się nieco szybciej będąc dalej od gracza
	look_at(Player.position) #tę linijkę kodu już znam i dumnie uzywam
	move_and_collide(motion)


func _on_Area2D_body_entered(body):
	if "Bullet" in body.name:
		queue_free() #easy, prawie to samo co z kill, tylko tutaj nie potrzebuję reloadować gry, bo mowa o zabijaniu przeciwnika
		
