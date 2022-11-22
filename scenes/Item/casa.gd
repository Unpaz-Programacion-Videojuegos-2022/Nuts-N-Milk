extends Area2D



func _ready():
	hide()
	pass

func _process(delta):
	if VariableGlobal.item == 3:
		show()

