extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	OS.set_window_size(Vector2(1100.0, 600.0))
	OS.set_window_resizable(false)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Escenas/msjInicial.scn")
	pass # replace with function body