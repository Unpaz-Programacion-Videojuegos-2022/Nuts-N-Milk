extends KinematicBody2D

var movimiento = false

var velocity = Vector2()
var speed = 100






func _physics_process(delta):
	if movimiento:
		move_and_slide(velocity)
		
	
	pass




func _on_Area2D_body_entered(body):
	body.get_name()
	if body.is_in_group("player"):
		print("hola mundo")
		movimiento = true
		
	pass

		
