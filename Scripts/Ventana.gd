extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var node = get_node("TextureRect")
onready var tiempo = get_node("Timer")
onready var texto = get_node("RichTextLabel")
var player 
var evento_tarjetas
var num

func _ready():	
	tiempo.start()
	randomize()
	num = int(rand_range(1,6))
	var imagen
	texto.set_text("Hola")
	 	
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

#func _process(delta):

		
func _on_Button_pressed():
	#Se le recta el tiempo transcurrido de contador (ya que contador empieza en 1000) y se pasa a milisegundos
	var fin = ((1000 - tiempo.time_left) * 1000)
	get_node(".").remove_and_skip()
	evento_tarjetas._evento()
	
	if num == 1:
		return player._actualizar_facebook(2000)
	elif num == 2:
		return player._actualizar_instagram(2000)
	elif num == 3:
		return player._actualizar_twitter(2000)
	elif num == 4:
		return player._actualizar_whatsapp(2000)
	elif num == 5:
		return player._actualizar_youtube(2000)
		
	