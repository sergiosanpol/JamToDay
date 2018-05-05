extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var node = get_node("TextureRect")
var tipo = 0
var player 
var evento_tarjetas



func _ready():	
	randomize()
	var num = int(rand_range(1,6))
	var imagen
	 	
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
		
func _set_evento(evento):
	evento_tarjetas = evento

		
func _on_Button_pressed():
	get_node(".").remove_and_skip()
	evento_tarjetas._evento()
	
	
	if tipo == 1:
		return player._actualizar_facebook()
	elif tipo == 2:
		return player._calcular_tiempo_instagram()
	elif tipo == 3:
		return player._calcular_tiempo_twitter()
	elif tipo == 4:
		return player._calcular_tiempo_whatsapp()
	elif tipo == 5:
		return player._calcular_tiempo_youtube()
		
	