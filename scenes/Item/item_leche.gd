extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	


func _on_item_leche_body_entered(body):
	if body.is_in_group("player"):
		$AudioStreamPlayer.playing = true
		yield(get_tree().create_timer(0.3),"timeout")
		self.queue_free()
