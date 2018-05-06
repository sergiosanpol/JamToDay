extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var ventanas = preload("res://Sprites/Ventana.tscn")
var player = load("res://Scripts/player.gd").new()
var evento_tarjeta = load("res://Scripts/evento_tarjeta.gd").new()
#var sonido = load("res://AudioStreamPlayer2D.gd").new()
var lista_ventanas = []
var SIZE
var contador
var tiempo = 0.0;
var tiempo_iteracion = 1;

var vida = 100;
var familia = 100;
var educacion = 100;

var whatsapp = 150;
var facebook = 500;
var youtube = 1000;
var twitter = 1000;
var instagram = 3000;

var life = preload("res://Escenas/Estado.tscn").instance()
var counts = preload("res://Escenas/Position2D.tscn").instance()

func _ready():
	OS.set_window_size(Vector2(1100.0, 600.0))
	SIZE = OS.window_size
	OS.set_window_resizable(false)
	
	add_child(life)
	add_child(counts)
	pass
	
func _process(delta):
	tiempo+=delta
	if(tiempo>=tiempo_iteracion):
		var vent = ventanas.instance()
		lista_ventanas.append(vent)
		var random_x = int(rand_range(0 + 205, SIZE.x - 105))
		var random_y = int(rand_range(0 + 125, SIZE.y - 25))
		lista_ventanas[len(lista_ventanas) - 1].position.x = random_x
		lista_ventanas[len(lista_ventanas) - 1].position.y = random_y
		lista_ventanas[len(lista_ventanas)-1]._set_evento(evento_tarjeta)
		contador = evento_tarjeta.contador
		
		
		whatsapp = evento_tarjeta.whatsapp
		counts.get_node("Label_What").text = str(whatsapp)
		
		facebook = evento_tarjeta.facebook
		counts.get_node("Label_Face").text = str(facebook)
		
		instagram = evento_tarjeta.instagram
		counts.get_node("Label_Insta").text = str(instagram)
		
		twitter = evento_tarjeta.twitter
		counts.get_node("Label_Twit").text = str(twitter)
		
		youtube = evento_tarjeta.youtube
		counts.get_node("Label_Yout").text = str(youtube)
		
		
		if(contador%10==0):
			tiempo_iteracion-=0.1
			life.update()
		print("Contador :",contador)
		print("Tiempo :",tiempo_iteracion)
		add_child(lista_ventanas[len(lista_ventanas) - 1])
		tiempo = 0.0
		print(len(lista_ventanas))