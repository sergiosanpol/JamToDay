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
	all_print()
	if(tiempo_ms>=2000):
		whatsapp+=4;
		vida -=3;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		whatsapp+=3;
		vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		whatsapp+=1;
		vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		whatsapp-=1;
		vida+=1;
	else:
		whatsapp-=3;
		vida+=2;


func _actualizar_facebook(tiempo_ms):
	all_print()
	if(tiempo_ms>=2000):
		facebook+=10;
		vida-=3;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		facebook+=5;
		vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		facebook+=2;
		vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		facebook-=2;
		vida+=1;
	else:
		facebook-=5;
		vida+=2;
	
func _actualizar_instagram(tiempo_ms):
	all_print()
	if(tiempo_ms>=2000):
		instagram+=40;
		vida-=5;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		instagram+=25;
		vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		instagram+=10;
		vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		instagram-=10;
		vida+=1;
	else:
		instagram-=25;
		vida+=2;
	
func _actualizar_twitter(tiempo_ms):
	all_print()
	if(tiempo_ms>=2000):
		twitter+=40;
		vida-=5;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		twitter+=20;
		vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		twitter+=10;
		vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		twitter-=10;
		vida+=1;
	else:
		twitter-=20;
		vida+=2;
	
func _actualizar_youtube(tiempo_ms):
	all_print()
	if(tiempo_ms>=2000):
		youtube+=100;
		vida-=10;
	elif(tiempo_ms<2000 and tiempo_ms>=1500):
		youtube+=50;
		vida-=2;
	elif(tiempo_ms<1500 and tiempo_ms>=1000):
		youtube+=20;
		vida-=1;
	elif(tiempo_ms<1000 and tiempo_ms>=500):
		youtube-=20;
		vida+=1;
	else:
		youtube-=50;
		vida+=2;
	
func all_print():
	
	print('wha', whatsapp)
	print('twit', twitter)
	print('face', facebook)
	print('insta', instagram)
	print('yt', youtube)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
