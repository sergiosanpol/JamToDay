extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var value = 100

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass
	
func update():
	value-=10
	get_node("TextureProgress").value = value
	print(get_node("TextureProgress").value)