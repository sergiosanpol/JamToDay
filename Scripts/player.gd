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

func _actualizar_whatsapp(tiempo_ms):
	#all_print()
	print("Tiempo what " , tiempo_ms)
	if(tiempo_ms<=2000):
		whatsapp+=4;
		vida -=1.5;
		familia -= 2.0
		educacion -= 2.5
	elif(tiempo_ms > 2000 and tiempo_ms <= 1500):
		whatsapp+=3;
		vida-=1.0;
		familia -= 1.5
		educacion -= 2
	elif(tiempo_ms > 1500 and tiempo_ms <= 1000):
		whatsapp+=1;
		vida-=0.5;
		familia -= 1.0
		educacion -= 1.5
	elif(tiempo_ms > 1000 and tiempo_ms <= 500):
		whatsapp-=6;
		vida+=1
		familia += 1.5
		educacion += 2
	else:
		whatsapp-=10;
		vida+=1.5;
		familia += 2.0
		educacion += 2.5


func _actualizar_facebook(tiempo_ms):
	#all_print()
	print("Tiempo face " , tiempo_ms)
	if(tiempo_ms <= 2000):
		facebook+=10;
		vida -=1.5;
		familia -= 2.0
		educacion -= 2.5
	elif(tiempo_ms > 2000 and tiempo_ms <= 1500):
		facebook+=5;
		vida-=1.0;
		familia -= 1.5
		educacion -= 2
	elif(tiempo_ms > 1500 and tiempo_ms <= 1000):
		facebook+=2;
		vida-=0.5;
		familia -= 1.0
		educacion -= 1.5
	elif(tiempo_ms > 1000 and tiempo_ms <= 500):
		facebook-=8;
		vida+=1
		familia += 1.5
		educacion += 2
	else:
		facebook-=15;
		vida+=1.5;
		familia += 2.0
		educacion += 2.5
	
func _actualizar_instagram(tiempo_ms):
	#all_print()
	print("Tiempo insta " , tiempo_ms)
	if(tiempo_ms <= 2000):
		instagram+=40;
		vida -=1.5;
		familia -= 2.0
		educacion -= 2.5
	elif(tiempo_ms > 2000 and tiempo_ms <= 1500):
		instagram+=25;
		vida-=1.0;
		familia -= 1.5
		educacion -= 2
	elif(tiempo_ms > 1500 and tiempo_ms <= 1000):
		instagram+=10;
		vida-=0.5;
		familia -= 1.0
		educacion -= 1.5
	elif(tiempo_ms > 1000 and tiempo_ms <= 500):
		instagram-=50;
		vida+=1
		familia += 1.5
		educacion += 2
	else:
		instagram-=75;
		vida+=1.5;
		familia += 2.0
		educacion += 2.5
	
func _actualizar_twitter(tiempo_ms):
	#all_print()
	print("Tiempo twitter " , tiempo_ms)
	if(tiempo_ms <= 2000):
		twitter+=40;
		vida -=1.5;
		familia -= 2.0
		educacion -= 2.5
	elif(tiempo_ms > 2000 and tiempo_ms <= 1500):
		twitter+=20;
		vida-=1.0;
		familia -= 1.5
		educacion -= 2
	elif(tiempo_ms > 1500 and tiempo_ms <= 1000):
		twitter+=10;
		vida-=0.5;
		familia -= 1.0
		educacion -= 1.5
	elif(tiempo_ms > 1000 and tiempo_ms <= 500):
		twitter-=70;
		vida+=1
		familia += 1.5
		educacion += 2
	else:
		twitter-=90;
		vida+=1.5;
		familia += 2.0
		educacion += 2.5
	
func _actualizar_youtube(tiempo_ms):
	#all_print()
	print("Tiempo you " , tiempo_ms)
	if(tiempo_ms <= 2000):
		youtube+=100;
		vida -=1.5;
		familia -= 2.0
		educacion -= 2.5
	elif(tiempo_ms > 2000 and tiempo_ms <= 1500):
		youtube+=50;
		vida-=1.0;
		familia -= 1.5
		educacion -= 2
	elif(tiempo_ms > 1500 and tiempo_ms <= 1000):
		youtube+=20;
		vida-=0.5;
		familia -= 1.0
		educacion -= 1.5
	elif(tiempo_ms > 1000 and tiempo_ms <= 500):
		youtube-=140;
		vida+=1
		familia += 1.5
		educacion += 2
	else:
		youtube-=150;
		vida+=1.5;
		familia += 2.0
		educacion += 2.5

func reduce():
	whatsapp -= 2;
	facebook -= 8;
	youtube -= 15;
	twitter -= 15;
	instagram -= 30;

func all_print():
	print("Vida: ", vida)
	print("Educación: ", educacion)
	print("Familia: ", familia)
	#print('wha', whatsapp)
	#print('twit', twitter)
	#print('face', facebook)
	#print('insta', instagram)
	#print('yt', youtube)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
