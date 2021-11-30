x = obj_jinx3.x
y = obj_jinx3.y + 10 - offset


if timer > 300 {
	image_alpha += 0.01	
	offset -= 1
}


if timer > 144
	image_angle = point_direction(x, y, mouse_x, mouse_y)
	
switch (timer) {
	
	case 144:
		audio_play_sound(snd_bombfall, 10, false)
		break;
	case 122:
		audio_play_sound(snd_heavyswing, 10, false)
		audio_play_sound(snd_b_piano, 10, false)
		sprite_set_offset(spr_keyboard, 0, 360)
		sprite_set_offset(spr_static, 0, 360)
		image_xscale += 0.5
		break;
		
	case 121:
		image_xscale += 0.5
		break;
	
		
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
	timer = 294
	
}



if on_mouse() and attackcooldown == 0 and image_alpha == 1 {
	global.hp -= 2
	attackcooldown = 90
	audio_play_sound(snd_basketball_bounce_keyboard, 10, false)
	sprite_index = spr_static
	
}

if attackcooldown > 0 {
	attackcooldown -= 1
		
}
else
	sprite_index = spr_keyboard
	

