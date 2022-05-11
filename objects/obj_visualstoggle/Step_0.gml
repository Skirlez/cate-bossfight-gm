if global.intensevis == true
	image_index = 0
else
	image_index = 1
	
if clicked()
	if global.intensevis == true {
		global.intensevis = false
		global.flashcolor = c_black
		play_sound(snd_pluck_reversed, false)	
	}
	else {
		global.intensevis = true
		global.flashcolor = c_white
		play_sound(snd_pluck, false)	
	}
