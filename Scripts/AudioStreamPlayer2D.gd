extends AudioStreamPlayer2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var tranqui = load("res://musica/tranqui.ogg")
var accion = load("res://musica/accion.ogg")
var gameOver = load("res://musica/gameOver.ogg")
var menu = load("res://musica/menu.ogg")
var win = load("res://musica/win.ogg")

func _ready():
   set_process(true)
   song2 = load("song2.ogg")
   
func _process(delta):
   if(self.is_playing() != true):
      if(self.get_stream() == tranqui) :
         self.set_stream(accion)
      else:
         self.set_stream(gameOver)
      self.play()

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
