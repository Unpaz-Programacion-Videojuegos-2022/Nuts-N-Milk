extends KinematicBody2D


var player 
var move = Vector2()
var speed = 150

func _physics_process(delta):
	move = Vector2()
	if player != null:
		move = position.direction_to(player.pos)
	else:
		move = Vector2()
	move = move.normalized()*speed
	move = move_and_slide(move)
	
	
		
func _on_Area2D_body_entered(body):
	if body != self:
		player = body



func _on_Area2D_body_exited(body):
	player = null
