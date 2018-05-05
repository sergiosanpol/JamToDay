extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var node = get_node("TextureRect")
onready var tiempo = get_node("Timer")
var player 
var num


func _ready():	
	tiempo.start()
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
		

#func _process(delta):
func _on_Button_pressed():
	var fin = (((tiempo.time_left - 1000) * -1) * 1000)
	get_node(".").remove_and_skip()
	print("Tipo ", num)
	
	if num == 1:
		player._actualizar_facebook(fin)
	elif num == 2:
		player._actualizar_instagram(fin)
	elif num == 3:
		player._actualizar_twitter(fin)
	elif num == 4:
		player._actualizar_whatsapp(fin)
	elif num == 5:
		player._actualizar_youtube(fin)
