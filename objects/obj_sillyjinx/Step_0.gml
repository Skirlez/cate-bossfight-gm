repeat(global.execute) {
	timer -= 1
	if timer <= 0 {
		timer = 206
		image_alpha = 0
	}

	

	if timer == 166 {
		if irandom_range(0, 2) == 0 {
			if choose(0, 1) == 0 
				y = irandom_range(20, 300)	
			else
				y = mouse_y

			image_index = 0
			image_alpha = 1
		}
		else
			timer = 206
	
	}


	if timer == 146 
		play_sound(snd_a_piano, false)



	else if timer < 146 and timer >= 122 {
		if timer % 6 == 0
			image_index = 1
		else
			image_index = 0
	}

	else if timer == 121 {
		image_index = 0
		var i = instance_create_depth(-640, y, -10000, obj_sillyjinxlaser)
		i.bomb = global.hard
		play_sound(snd_drum_boing, false)
		play_sound(snd_boom_cloud2, false)
	}
	if timer < 60
		image_alpha -= 0.02
}