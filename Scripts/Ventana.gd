extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var node = get_node("TextureRect")
var num
var player = load("res://Scripts/player.gd").new()
var evento_tarjetas



func _ready():	
	randomize()
	num = int(rand_range(1,6))
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
	
	if num == 1:
		evento_tarjetas._evento(1)
#		return player._actualizar_facebook(2000)
	elif num == 2:
		evento_tarjetas._evento(2)
#		return player._actualizar_instagram(2000)
	elif num == 3:
		evento_tarjetas._evento(3)
#		return player._actualizar_twitter(2000)
	elif num == 4:
		evento_tarjetas._evento(4)
#		return player._actualizar_whatsapp(2000)
	elif num == 5:
		evento_tarjetas._evento(5)
#		return player._actualizar_youtube(2000)
		
	