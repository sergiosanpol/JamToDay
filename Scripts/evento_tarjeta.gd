extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var contador = 1
var tiempo = 0.0
var tiempo_iteracion = 10.0



func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
		

func _retrasar_contador(valor):
	contador-=valor

func _evento():
	contador+=1
	tiempo=0.0
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
