extends KinematicBody2D


var velocidad: int = 70
var distanciaMov: int = 250

onready var inicioX : float = position.x
onready var objetivoX: float = position.x + distanciaMov

func _process(delta):
	$AnimatedSprite.playing = true

func _physics_process(delta: float)-> void:
	position.x = move_to(position.x, objetivoX, velocidad*delta)
	
	if position.x == objetivoX:
		if objetivoX == inicioX:
			objetivoX = position.x + distanciaMov
		else:
			objetivoX = inicioX


func move_to(posahora, hacia, cuanto):
	var nuevo = posahora
	#mover hacia la derecha
	if nuevo < hacia:
		nuevo += cuanto
		$AnimatedSprite.flip_h = false
		if nuevo > hacia:
			nuevo = hacia
		

	 #mover hacia la izquierda
	else:
		nuevo -= cuanto
		$AnimatedSprite.flip_h = true
		if nuevo < hacia:
			nuevo = hacia
	return nuevo
	pass





func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.queue_free()
		
