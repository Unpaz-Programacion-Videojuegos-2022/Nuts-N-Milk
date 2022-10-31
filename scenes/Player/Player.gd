extends KinematicBody2D

var gravity = 100
var speed = 100
var velocity = Vector2()
var jump = -200



func _ready():

	pass



func _process(delta):
	
	animacion()
	

func _physics_process(delta):
	
	move(delta)
	move_and_slide(velocity, Vector2(0, -1))


func move(delta):
	velocity.x = 0
	velocity.y += gravity * delta
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	
	#if !is_on_floor():
	#	velocity.y += gravity * delta
	
	if Input.is_action_pressed("ui_up"):
			velocity.y = jump

func animacion():
	if velocity.x < 0:
		$AnimatedSprite.animation = ""
		
		$AnimatedSprite.flip_h = true
	if velocity.x > 0:
		$AnimatedSprite.animation = ""
		
		$AnimatedSprite.flip_h = false
	if velocity.x == 0:
		$AnimatedSprite.animation = "Idle"
	
	


