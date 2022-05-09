if timer > 120 and timer < 1200 {
	obj_mousebox.x = 320
	obj_mousebox.y = 250
	window_mouse_set(320, 250);
	if timer > 340 {
		shakeScreen(0.5, 3, 0)
		if timer > 600 {
			audio_sound_pitch(global.music, timer / 600)	
			flash = 2
			drawalpha += 0.001 * global.fm
		}
	}
}


repeat(global.execute) {
	timer += 1
	if timer % 5 == 0
		image_blend = make_color_hsv(irandom_range(0, 255), 255, 255)	
		
	switch (timer) {
		case 120:
			drawself = true
			flash = 10
			audio_play_sound(snd_appear, 10, false)
			break;
		case 240:
			audio_play_sound(snd_shadowpendant, 10, false)
			instance_create_depth(576, 352, -10000, obj_rewindthing)
			break;
		case 340:
			obj_rewindthing.move = true
			global.music = audio_play_sound(snd_rewind, 10, true)
			break;
		case 600:
			drawalpha = 0
			break;
		case 1200:
			drawself = false
			audio_stop_sound(snd_rewind)
			audio_play_sound(snd_appear, 10, false)
			instance_destroy(obj_rewindthing)
			global.hard = true
			flash = 5
			drawalpha = 1
			drawgreybackground = true
			depth = -9998
			break;
		case 1300:
			room_goto(mainroom)
	}
			
}
