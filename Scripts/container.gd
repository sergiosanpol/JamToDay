extends Node

var player = load("res://Scripts/player.gd")

var count = 0
var n_msj = 0
var msjs  = [
"Añapse. Año 2018. Las redes sociales Rettiwt, Koobecaf, Margatsni, Ebutuoy y Ppastahw acaparan la mayoría del tiempo a la ciudadanía. ¿Conseguirás ser el usuario mas influyente de todos?",
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
	print("num ", n_msj)
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