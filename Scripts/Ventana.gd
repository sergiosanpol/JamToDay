extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var node = get_node("TextureRect")
var tiempo = 0.0
var tiempo_limite = 5.0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var num = round(rand_range(1,5))
	var imagen
	
	print(num)
	
	if num == 1:
		imagen = load("res://Imagenes/face.png")
		node.set_texture(imagen)
	elif num == 2:
		imagen = load("res://Imagenes/insta.png")
		node.set_texture(imagen)
	elif num == 3:
		imagen = load("res://Imagenes/twi.png")
		node.set_texture(imagen)
	elif num == 4:
		imagen = load("res://Imagenes/wapp.png")
		node.set_texture(imagen)
	elif num == 5:
		imagen = load("res://Imagenes/you.png")
		node.set_texture(imagen)
		
	set_process(true)
		

func _process(delta):
	tiempo+=delta
	if(tiempo>=tiempo_limite):
		get_node(".").remove_and_skip()
		
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
