if clicked() == true {
	global.shake = 0
	global.hard = hard
	obj_manager.whitescreen = 1
	if quickentrance 
		obj_manager.quickentrance = true
	
	if finaleintro {
		global.music = play_sound(snd_music_finalehardmodeintro, false)
		audio_sound_set_track_position(global.music, 2.7)		
	}
	room_goto(the_room)

}

