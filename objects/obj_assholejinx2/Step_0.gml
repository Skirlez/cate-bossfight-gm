repeat (global.execute) {
	
	if instance_number(obj_jinx2attack) < 5 and phase = -1
		phase = 0
		
	if phase != -1
		timer += 1
		
	switch (phase) {
		case 0:
			if x > xstart - 64
				x -= 0.75
			else {
				phase = 1
				timer = 0
			}
			break
		case 1:
			if instance_number(obj_jinx2attack) >= 5 {
				phase = 2
				timer = 0
				sprite_index = spr_jinx2
				break
			}
			if timer == 1 {
				play_sound(snd_higher_pitch_alert, false)
				sprite_index = spr_jinx2attack	
			}
			if timer % 15 == 0 and timer >= 30 {
				var i = instance_create_depth(x, y, -10000, obj_jinx2attack)	
				i.immortal = true
				play_sound(snd_low_boing2, false)
			}
			break
		case 2:
			if timer > 60 {
				if x < xstart
					x += 0.75
				else {
					phase = -1
					timer = 0	
				}
			}
			break;
	}
	

}
