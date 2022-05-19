repeat(global.execute) {
	timer += 1

	if timer == 500 {
		play_sound(snd_pluck, false)
		room_goto(bonuscat)
	}
}
if mouse_check_button_pressed(mb_middle) {
	play_sound(snd_pluck, false)
	room_goto(bonuscat)	
}

if image_alpha > 0  {
	image_xscale += 0.002 * global.fm
	image_yscale += 0.002 * global.fm
	catalpha -= 0.0015 * global.fm
}



