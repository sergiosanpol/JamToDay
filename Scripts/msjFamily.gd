extends Node

var count = 0
var msjs  = "Has conseguido un gran número de seguidores, pero, ¿A qué coste? Tus amigos y familiares te han abandonado. Espero que la soledad no te sea muy dura..."

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
				get_tree().change_scene("res://Escenas/Menu.tscn")
			
func get_text():
	return msjs.substr(0, int(count))