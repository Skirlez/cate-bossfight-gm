
repeat(global.execute) {
	timer += 1
	if timer == 240 and global.hard
		global.music = audio_play_sound(snd_music_finalehardmodeintro, 10, false)
	if timer > 300
		whitescreen += 0.01
	
	if whitescreen >= 1 {
		obj_manager.quickentrance = true
		obj_manager.whitescreen = 1
		room_goto(bonuscat)
	}
}