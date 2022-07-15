repeat(global.execute) {
	vsp += 0.25
	image_angle += 1 * hsp
}


x += hsp * global.fm
y += vsp * global.fm

if y > room_height + 500 and played == false {
	if !instance_exists(obj_jinx7)
		instance_destroy(id)
	else
		played = true
	play_sound(snd_slipfall, false)	
	shakeScreen(10, 3, 1)
}
	

if y > room_height + 900 {
	instance_destroy(id)
	play_sound(snd_squeaky_toy, false)	
}
	

