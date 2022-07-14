repeat(global.execute) {
	vsp += 0.25
	image_angle += 1 * hsp
}


x += hsp * global.fm
y += vsp * global.fm

if y > room_height + 500 {
	instance_destroy(id)
	play_sound(snd_slipfall, false)	
	shakeScreen(10, 3, 1)
}
	

