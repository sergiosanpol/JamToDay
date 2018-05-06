extends Node

var count = 0
var msjs  = "Has muerto. Intentar conseguir esa foto espectacular desde lo mas alto del acantilado quizás no fue la mejor de tus decisiones"

func _ready():
	get_node("Sprite").texture = load("res://Imagenes/rip.png")
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