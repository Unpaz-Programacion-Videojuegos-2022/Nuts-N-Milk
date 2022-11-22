extends KinematicBody2D


var menus = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$AnimatedSprite.animation = "menu"
	$AudioStreamPlayer.playing = true
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		menus += 1
		if menus == 1:
			$AnimatedSprite.animation = "creditos"
		if menus == 2:
			$AnimatedSprite.animation = "tuto"
		if menus == 3:
			get_tree().change_scene("res://scenes/World/World.tscn")
