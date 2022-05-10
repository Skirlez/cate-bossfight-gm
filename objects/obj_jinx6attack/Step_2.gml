if go == false {
	x = dcos((global.timer * 300) + (spin * 45)) * 40 + object.x
	y = dsin((global.timer * 300) + (spin * 45)) * 40 + object.y
}

else {
	if bomb == true {
		if x + 20 > room_width or x - 20 < 0 
			flip_x *= -1	
		
		if y + 18 > room_height or y - 20 < 0
			flip_y *= -1
		repeat (global.execute) {
			bombtimer -= 1
			image_blend = make_color_hsv(irandom_range(0, 255), 255, 255)
			if bombtimer == 0 {
				if !audio_is_playing(snd_explosion)
				play_sound(snd_explosion, false)	
				shakeScreen(20, 8, 0.1)
				repeat(30)
					instance_create_depth(x, y, -10001, obj_note)
				instance_destroy(id)
			}
		}
	}
	if calcdir == false {
		dir = -point_direction(x, y, mouse_x, mouse_y) + irandom_range(-30, 30)
		calcdir = true
		mercy = false
	}
	move_towards_point(x + (dcos(dir) * 50) * flip_x, y + (dsin(dir) * 50) * flip_y, 10 * global.fm)
	if bomb == false {
		image_xscale += 0.02 * global.fm
		image_yscale += 0.02 * global.fm
		image_alpha -= 0.02 * global.fm
	}
}


	
if diddamage == false and on_mouse() and mercy == false {
	global.hp -= 1
	play_sound(snd_basketball_bounce, false)
	diddamage = true
}
	