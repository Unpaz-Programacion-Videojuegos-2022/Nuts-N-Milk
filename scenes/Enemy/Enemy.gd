extends KinematicBody2D





func _on_Area2D_body_entered(body):
	body.get_name()
	if body.is_in_group("player"):
		print("hola mundo")
	pass

		
