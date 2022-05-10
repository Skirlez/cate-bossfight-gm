repeat(global.execute) {
	timer += 1

	if timer == 500 {
		play_sound(snd_pluck, false)
		room_goto(bonuscat)
	}
}

if image_alpha > 0  {
	image_xscale += 0.001 * global.fm
	image_yscale += 0.001 * global.fm
	catalpha -= 0.0015 * global.fm
}



