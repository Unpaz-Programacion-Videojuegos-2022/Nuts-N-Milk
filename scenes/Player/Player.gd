extends KinematicBody2D

var gravity = 300
var speed = 100
var velocity = Vector2()
var jump = -300
var max_speed = 200


var limit_jumps = 2
var jumps = 0


var collidig_ladder = false
var going_up = false


var item = [ "item1","item2", "item3" ]
var max_lista = 3



func _ready():

	pass



func _process(delta):
	$AnimatedSprite.playing = true
	animacion()


func _physics_process(delta):
	
	move(delta)
	if !going_up:
		velocity.y += gravity * delta
	climb()
	move_and_slide(velocity, Vector2(0, -1))


func move(delta):
	velocity.x = 0
	
	if is_on_floor():
		jumps = 0
		
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		
		
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_just_released("ui_up"):
		apply_jumps()

func apply_jumps():
	if jumps < limit_jumps:
		velocity.y = jump
		move_and_slide(velocity, Vector2(0, -1))
		jumps += 1
	
	#if Input.is_action_pressed("ui_up"):
	#		velocity.y = jump



func animacion():
	if velocity.x < 0:
		$AnimatedSprite.animation = "Letf"
		
		$AnimatedSprite.flip_h = true
	if velocity.x > 0:
		$AnimatedSprite.animation = "Letf"
		
		$AnimatedSprite.flip_h = false
	if velocity.x == 0:
		$AnimatedSprite.animation = "Idle"
		
		
	#animacion de salto
	if !is_on_floor():
		if !collidig_ladder:
			$AnimatedSprite.animation = "up"
	
# animacion escaleras
	if collidig_ladder:
		$AnimatedSprite.animation = "climb"
		if Input.is_action_pressed("ui_up"):
			$AnimatedSprite.playing = true
			$AnimatedSprite.animation = "climb"
		elif Input.is_action_pressed("ui_down"):
			$AnimatedSprite.playing = true
			$AnimatedSprite.animation = "climb"

#		elif going_up:
#			$AnimatedSprite.playing = false



func climb():
	if collidig_ladder:
		if Input.is_action_pressed("ui_up"):
			going_up = true
			velocity.y = max(velocity.y -speed, - max_speed)
#			$AnimatedSprite.playing = true
#			$AnimatedSprite.animation ="climb"
		elif Input.is_action_pressed("ui_down"):
			going_up = true
			velocity.y = max(velocity.y, max_speed)
#			$AnimatedSprite.playing = true
#			$AnimatedSprite.animation ="climb"
		else:
			if going_up:
				velocity.y = 0
#			$AnimatedSprite.playing = false






func _on_Area2D_area_exited(area):
	area.get_name()
	if area.is_in_group("ladder"):
		collidig_ladder = false
		going_up = false


func _on_Area2D_area_entered(area):
	area.get_name()
	if area.is_in_group("ladder"):
		collidig_ladder = true
		
