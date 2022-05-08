repeat(global.execute) {
	timer += 1

	if timer == 500 {
		audio_play_sound(snd_pluck, 10, false)
		room_goto(bonuscat)
	}
}

if image_alpha > 0  {
	image_xscale += 0.001 * global.fm
	image_yscale += 0.001 * global.fm
	catalpha -= 0.0015 * global.fm
}



