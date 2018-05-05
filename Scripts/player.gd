extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var vida = 100;
var familia = 100;
var educacion = 100;

var whatsapp = 150;
var facebook = 500;
var youtube = 1000;
var twitter = 1000;
var instagram = 3000;

var max_whatsapp = 1000;
var max_facebook = 2000;
var max_youtube = 10000000;
var max_twitter = 20000000;
var max_instagram = 50000000;



func _ready():
	pass;


func _actualizar_whatsapp(tiempo_ms):
	if(tiempo_ms>=2000):
		this.whatsapp+=4;
		this.vida -=3;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		this.whatsapp+=3;
		this.vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		this.whatsapp+=1;
		this.vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		this.whatsapp-=1;
		this.vida+=1;
	else:
		this.whatsapp-=3;
		this.vida+=2;
	

func _actualizar_facebook(tiempo_ms):
	if(tiempo_ms>=2000):
		this.facebook+=10;
		this.vida-=3;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		this.facebook+=5;
		this.vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		this.facebook+=2;
		this.vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		this.facebook-=2;
		this.vida+=1;
	else:
		this.facebook-=5;
		this.vida+=2;
	
func _actualizar_instagram(tiempo_ms):
	if(tiempo_ms>=2000):
		this.instagram+=40;
		this.vida-=5;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		this.instagram+=25;
		this.vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		this.instagram+=10;
		this.vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		this.instagram-=10;
		this.vida+=1;
	else:
		this.instagram-=25;
		this.vida+=2;
	
func _actualizar_twitter(tiempo_ms):
	if(tiempo_ms>=2000):
		this.twitter+=40;
		this.vida-=5;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		this.twitter+=20;
		this.vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		this.twitter+=10;
		this.vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		this.twitter-=10;
		this.vida+=1;
	else:
		this.twitter-=20;
		this.vida+=2;
	
func _actualizar_youtube(tiempo_ms):
	if(tiempo_ms>=2000):
		this.youtube+=100;
		this.vida-=10;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		this.youtube+=50;
		this.vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		this.youtube+=20;
		this.vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		this.youtube-=20;
		this.vida+=1;
	else:
		this.youtube-=50;
		this.vida+=2;
	
func _calcular_tiempo_whatsapp():
	return 1000 / (this.whatsapp / 150)
	
func _calcular_tiempo_facebook():
	return 1000 / (this.facebook / 500)
	
func _calcular_tiempo_youtube():
	return 1000 / (this.youtube / 1000)

func _calcular_tiempo_instagram():
	return 1000 / (this.instagram / 3000)
	
func _calcular_tiempo_twitter():
	return 1000 / (contactos / 1000)
	
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
