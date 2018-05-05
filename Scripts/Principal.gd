extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var ventanas = preload("res://Sprites/Ventana.tscn")
var lista_ventanas = []
var SIZE = OS.window_size

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	for i in 10:
		randomize()
		lista_ventanas.append(ventanas.instance())
		var random_x = int(rand_range(0, SIZE.x))
		var random_y = int(rand_range(0, SIZE.y))
		lista_ventanas[i].position.x = random_x
		lista_ventanas[i].position.y = random_y
		add_child(lista_ventanas[i])
	

#func _process(delta):

#	pass
