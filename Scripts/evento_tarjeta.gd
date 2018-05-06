extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var contador = 1
var tiempo = 0.0
var tiempo_iteracion = 10.0

var vida = 100;
var familia = 100;
var educacion = 100;

var whatsapp = 150;
var facebook = 500;
var youtube = 1000;
var twitter = 1000;
var instagram = 3000;


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
		

func _retrasar_contador(valor):
	contador-=valor

func _evento(num):
	contador+=1
	tiempo=0.0
	print('evtnum ', num)
	if num == 4:
		whatsapp+=4;
		vida -=3;
	elif num == 1:
		facebook+=10;
		vida-=3;
	elif num == 2:
		instagram+=40;
		vida-=5;
	elif num == 3:
		twitter+=40;
		vida-=5;
	elif num == 5:
		youtube+=100;
		vida-=10;
		
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
