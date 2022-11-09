extends KinematicBody2D


var player = null
var move = Vector2()
var speed = 50
var gravity = 100




func _ready():
	pass




func _physics_process(delta):
	move = Vector2()
	move.y += gravity * delta
	move_and_collide(move)
	if player != null:
		move = position.direction_to(player.position)
	
	else:
		move = Vector2()
	move = move.normalized() * speed
	move = move_and_slide(move) 
		
	
	
	

func _on_Area2D_body_entered(body):
	if body != self:
		player = body
		


		


func _on_Area2D_body_exited(body):
	player = null
	
	
