if global.scoretoggle == true
	image_index = 0
else
	image_index = 1
	
if clicked() == true {
	if global.scoretoggle == true {
		global.scoretoggle = false
		play_sound(snd_pluck_reversed, false)	
	}
	else {
		global.scoretoggle = true
		play_sound(snd_pluck, false)	
	}
}
