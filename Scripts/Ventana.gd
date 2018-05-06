extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var node = get_node("TextureRect")
onready var tiempo = get_node("Timer")
onready var texto = get_node("RichTextLabel")
var texto_face = ["Hoy es el cumpleaños de Pepi", "Gregorio ha compartido tu publicación.", "Te han etiquetado en 616 fotos nuevas."]
var texto_insta = ["@xinooooo ha subido una foto.", "@Goku86586fase te ha mencionado.", "@lubl te ha solicitado amistad."]
var texto_twitter = ["#JamtodayAl3", "Traf_de_org ha comenzado a seguirte.", "Mensaje directo de @Thanos."]
var texto_what = ["Me has dejado en vista??", "Aa mama te ha enviado un mensaje.", "Reenvía esta cadena para..."]
var texto_you = ["gurifrisky97 chupito lejía challenge.", "Colorín1/4 video reacción video reacción mirando a la pared.", "eR_muelas31415926 gameplay chair simulator 2016"]
var player 
var evento_tarjetas
var num

func _ready():	
	tiempo.start()
	randomize()
	num = int(rand_range(1,6))
	var text_num = int(rand_range(0,3)) 
	var imagen
	 	
	if num == 1:
		imagen = load("res://Imagenes/face.png")
		texto.set_text(texto_face[text_num])
		node.set_texture(imagen)
	elif num == 2:
		imagen = load("res://Imagenes/insta.png")
		texto.set_text(texto_insta[text_num])
		node.set_texture(imagen)
	elif num == 3:
		imagen = load("res://Imagenes/twi.png")
		texto.set_text(texto_twitter[text_num])
		node.set_texture(imagen)
	elif num == 4:
		imagen = load("res://Imagenes/wapp.png")
		texto.set_text(texto_what[text_num])
		node.set_texture(imagen)
	elif num == 5:
		imagen = load("res://Imagenes/you.png")
		texto.set_text(texto_you[text_num])
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
		
	