extends Node

var count = 0
var msjs  = "Añapse. Año 2018. Las redes sociales Rettiwt, Koobecaf, Margatsni, Ebutuoy y Ppastahw acaparan la mayoría del tiempo a la ciudadanía. ¿Conseguirás ser el usuario mas influyente de todos?"

func _ready():
	pass

func _process(delta):
	count+=0.25
	if (count<=msjs.length()):
		get_node("RichTextLabel").set_text(str(get_text()))

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ENTER :
			if count < msjs.length(): 
				count = msjs.length()-1
			else:
#				get_tree().quit()
				get_tree().change_scene("res://Escenas/Principal.tscn")
			
func get_text():
	return msjs.substr(0, int(count))