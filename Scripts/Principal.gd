extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var ventanas = preload("res://Sprites/Ventana.tscn")
var player = load("res://Scripts/player.gd").new()
var lista_ventanas = []
var SIZE = OS.window_size
var tiempo = 0.0;
var tiempo_iteracion = 1;



func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	tiempo+=delta
	if(tiempo>=tiempo_iteracion):	
		lista_ventanas.append(ventanas.instance())
		var random_x = int(rand_range(0, SIZE.x))
		var random_y = int(rand_range(0, SIZE.y))
		lista_ventanas[len(lista_ventanas) - 1].position.x = random_x
		lista_ventanas[len(lista_ventanas) - 1].position.y = random_y
		add_child(lista_ventanas[len(lista_ventanas) - 1])
		tiempo = 0.0
		print(len(lista_ventanas))