timer += 1

if image_alpha > 0  {
	image_xscale += 0.001
	image_yscale += 0.001
	catalpha -= 0.001
}



if timer == 430 {
	audio_play_sound(snd_pluck, 10, false)
	room_goto(bonuscat)
}
