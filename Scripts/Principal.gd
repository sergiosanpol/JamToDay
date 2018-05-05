extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var ventanas = preload("res://Sprites/Ventana.tscn")
var player = load("res://Scripts/player.gd").new()
var lista_ventanas = []
var SIZE
var tiempo = 0.0;
var tiempo_iteracion = 1;



func _ready():
	OS.set_window_size(Vector2(1100.0, 600.0))
	SIZE = OS.window_size
	OS.set_window_resizable(false)
	# Called every time the node is added to the scene.
	# Initialization here

func _process(delta):
	marcadores()
	tiempo+=delta
	if(tiempo>=tiempo_iteracion):	
		lista_ventanas.append(ventanas.instance())
		var random_x = int(rand_range(0 + 110, SIZE.x - 110))
		var random_y = int(rand_range(0 + 100, SIZE.y - 100))
		lista_ventanas[len(lista_ventanas) - 1].player = player
		lista_ventanas[len(lista_ventanas) - 1].position.x = random_x
		lista_ventanas[len(lista_ventanas) - 1].position.y = random_y
		add_child(lista_ventanas[len(lista_ventanas) - 1])
		tiempo = 0.0
		
func marcadores():
	print("Face " , player.facebook)
	print("You " , player.youtube)
	print("Vida " , player.vida)
	