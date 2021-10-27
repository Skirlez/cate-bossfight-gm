x = obj_jinx3.x
y = obj_jinx3.y + 10


if timer > 112
	image_angle = point_direction(x, y, mouse_x, mouse_y)
	
switch (timer) {
	
	case 112:
		audio_play_sound(snd_bombfall, 10, false)
		break;
	case 102:
		audio_play_sound(snd_heavyswing, 10, false)
		audio_play_sound(snd_b_piano, 10, false)
		sprite_set_offset(spr_keyboard, 0, 172)
		sprite_set_offset(spr_static, 0, 172)
		image_xscale += 0.5
		break;
		
	case 101:
		image_xscale += 0.5
		break;
	
		
	case 2:
		image_xscale -= 0.5
		break;
		
	case 1:
		image_xscale = 0.05

		break;
	
	
}	
	
	
timer -= 1
if timer <= 0 {
	sprite_set_offset(spr_keyboard, 480, 172)
	sprite_set_offset(spr_static, 480, 172)
	timer = 260
	
}



if on_mouse() and attackcooldown == 0 {
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