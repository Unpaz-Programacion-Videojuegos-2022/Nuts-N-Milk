extends Sprite


var menu = 0



func _ready():
	pass



func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		menu += 1
		
