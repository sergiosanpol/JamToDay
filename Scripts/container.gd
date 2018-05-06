extends Node

var count = 0
var n_msj = 1
var msjs  = [
"Añapse. Año 2018. Las redes sociales Rettiwt, Koobecaf, Margatsni, Ebutuoy y Ppastahw acaparan la mayoría del tiempo a la ciudadanía. ¿Conseguirás ser el usuario mas influyente de todos?",
"No te quedan seguidores. Esto es el fin... Espera un momento... Una vida llena de emociones y aventuras te sigue esperando ahí fuera, lejos de la pantalla. ¡Disfruta!",
"Has conseguido un gran número de seguidores, pero, ¿A qué coste? Tus amigos y familiares te han abandonado. Espero que la soledad no te sea muy dura...",
"Te han despido. No puedes seguir pagando internet, luz, alquiler... Toca un nuevo comienzo, ¡Suerte!",
"Has muerto. Publicar lo que te gustan los perros mientras te acercas rápidamente al cruce de la carretera principal quizás no fue una buena decisión",
"Has muerto. Intentar conseguir esa foto espectacular desde lo mas alto del acantilado quizás no fue la mejor de tus decisiones",
"Genial. Has conseguido encontrar el equilibrio sin renunciar a nada"
]
var imgs = [
"",
"",
"",
"",
"rip.png",
"rip.png",
"buddha.png"
]

func _ready():
	get_node("Sprite").texture = load("res://"+imgs[n_msj])
	pass

func _process(delta):
	count+=0.25
	if (count<=msjs[n_msj].length()):
		get_node("RichTextLabel").set_text(str(get_text()))

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ENTER :
			if count < msjs[n_msj].length(): 
				count = msjs[n_msj].length()-1
			else:
#				get_tree().quit()
				get_tree().change_scene("res://Escenas/Principal.tscn")
			
func get_text():
	return msjs[n_msj].substr(0, int(count))