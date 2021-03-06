x = obj_jinx3.x
y = obj_jinx3.y + 10 - offset
image_speed = global.imagespeed

if timer > 144
	image_angle = point_direction(x, y, mouse_x, mouse_y)

repeat(global.execute) {	
	if timer > 300 {
		image_alpha += 0.01	
		offset -= 1
	}
	
	
	if global.hard and timer < 100 and timer >= 20  {
		if timer % 5 == 0
			image_blend = make_color_hsv(irandom_range(0, 255), 255, 255)
		if timer < 80
			image_angle += 6 * rotdir
	}
	else
		image_blend = c_white
	
	
	switch (timer) {
	
		case 144:
			play_sound(snd_bombfall, false)
			break;
		case 122:
			shakeScreen(40, 3, 0.2)
			play_sound(snd_heavyswing, false)
			play_sound(snd_b_piano, false)
			sprite_set_offset(spr_keyboard, 0, 360)
			sprite_set_offset(spr_static, 0, 360)
			image_xscale += 0.5
			break;
		
		case 121:
			image_xscale += 0.5
			break;
		case 100:
			if global.hard {
				rotdir = choose(-1, 1)
				if rotdir = 1
					play_sound(snd_higher_pitch_alert, false)
				else
					play_sound(snd_alert, false)
			}
			break;
			
	/*
		case 80:
			if global.hard
				timer = 3
			break;
	*/
		case 2:
			image_xscale -= 0.5
			break;
		
		case 1:
			image_xscale = 0.08
			break;
	
	
	}	
	
	
	timer -= 1
	if timer <= 0 {
		sprite_set_offset(spr_keyboard, 480, 360)
		sprite_set_offset(spr_static, 480, 360)
		if global.hard
			timer = irandom_range(150, 250)
		else
			timer = 294
	
	}



	if on_mouse() and attackcooldown == 0 and image_alpha == 1 {
		damage_player(2)
		attackcooldown = 90
		play_sound(snd_basketball_bounce_keyboard, false)
		sprite_index = spr_static
	
	}

	if attackcooldown > 0 {
		attackcooldown -= 1
		
	}
	else {
		sprite_index = spr_keyboard
		if global.hard
			image_index = 1
		else
			image_index = 0	
	}
	

}