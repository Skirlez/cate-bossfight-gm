if go == false {
	x = dcos((global.timer * 300) + (spin * 45)) * 40 + object.x
	y = dsin((global.timer * 300) + (spin * 45)) * 40 + object.y
}

else {
	if calcdir == false {
		dir = -point_direction(x, y, mouse_x, mouse_y) + irandom_range(-30, 30)
		calcdir = true
	}
	move_towards_point(x + dcos(dir) * 50, y + dsin(dir) * 50, 10)
	image_xscale += 0.02
	image_yscale += 0.02
	image_alpha -= 0.02
}


	
if diddamage == false and on_mouse() {
	global.hp -= 1
	audio_play_sound(snd_basketball_bounce, 10, false)
	diddamage = true
}
	