extends KinematicBody2D


var speed = 100
var velocity = Vector2()
#var max_velocity = 50


func _ready():
	
	pass 
	
func _physics_process(delta):
	move()
	move_and_slide(velocity)


func move():
	velocity.x = 0
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed
	


