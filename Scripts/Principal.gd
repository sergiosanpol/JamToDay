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
var dentro = false

var barras = preload("res://Escenas/Estado.tscn").instance()
var counts = preload("res://Escenas/Position2D.tscn").instance()

func _ready():
	OS.set_window_size(Vector2(1100.0, 600.0))
	SIZE = OS.window_size
	OS.set_window_resizable(false)
	counts.position = Vector2(30, 70)
	add_child(barras)
	add_child(counts)
	pass
	
func _process(delta):
	comprobarVidas()
	tiempo+=delta
	if(tiempo>=tiempo_iteracion):
		var vent = ventanas.instance()
		lista_ventanas.append(vent)
		var random_x = int(rand_range(0 + 205, SIZE.x - 105))
		var random_y = int(rand_range(0 + 125, SIZE.y - 100))
		lista_ventanas[len(lista_ventanas) - 1].player = player
		lista_ventanas[len(lista_ventanas) - 1].position.x = random_x
		lista_ventanas[len(lista_ventanas) - 1].position.y = random_y
		lista_ventanas[len(lista_ventanas)-1]._set_evento(evento_tarjeta)
		contador = evento_tarjeta.contador
		
		counts.get_node("Label_What").text = str(player.whatsapp)
		
		counts.get_node("Label_Face").text = str(player.facebook)
		
		counts.get_node("Label_Insta").text = str(player.instagram)
		
		counts.get_node("Label_Twit").text = str(player.twitter)
		
		counts.get_node("Label_Yout").text = str(player.youtube)
		
		barras.get_node("ProgressFamily").value = player.familia
		barras.get_node("ProgressWork").value = player.educacion
		barras.get_node("ProgressLife").value = player.vida
		
		if(contador%10==0 && dentro == false):
			if contador >= 90:
				tiempo_iteracion-=0.05
			elif contador >= 65:
				tiempo_iteracion-=0.1
			else:
				tiempo_iteracion-=0.05
			dentro = true
		else:
			if contador % 10 != 0:
				dentro = false
				
		#print("Contador :",contador)
		#print("Tiempo :",tiempo_iteracion)
		add_child(lista_ventanas[len(lista_ventanas) - 1])
		tiempo = 0.0
		player.all_print()
		#print(len(lista_ventanas))

func comprobarVidas():
	if(player.vida > 100):
		player.vida = 100
	if player.educacion > 100:
		player.educacion = 100
	if player.familia > 100:
		player.familia = 100
	if player.twitter < 0:
		player.twitter = 0
	if player.facebook < 0:
		player.facebook = 0
	if player.instagram < 0:
		player.instagram = 0
	if player.youtube < 0:
		player.youtube = 0
	if player.whatsapp < 0:
		player.whatsapp = 0