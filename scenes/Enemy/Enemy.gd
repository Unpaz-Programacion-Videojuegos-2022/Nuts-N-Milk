extends KinematicBody2D

var movimiento = false
var posicion = Vector2.ZERO
export (int) var velocity

var estado = ["IDEL", "RUN"]
var estado_actual = estado[0]




func _ready():
	pass




func _physics_process(delta):
	if estado_actual == estado[0]:
		$AnimatedSprite.play("Idle")
		posicion.x = 0
	elif estado_actual == estado[1]:
		$AnimatedSprite.play("Run")
		posicion.x = velocity
	posicion = move_and_slide(posicion)


	if movimiento:
		estado_actual = estado[1]
		
	else:
		posicion.x = 0
		estado_actual = estado[0]
	





func _on_Area2D_body_entered(body):
	body.get_name()
	if body.is_in_group("player"):
		
		movimiento = true
		


		
