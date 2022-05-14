image_speed = global.imagespeed
if timer > 120 and timer < 1200 {
	obj_mousebox.x = 320
	obj_mousebox.y = 250
	if timer == 340
		shakeScreen(860, 1, -0.02, false)
	else if timer > 340 {
		if timer > 600 {
			audio_sound_pitch(global.music, timer / 600)	
			flash = 2
			flashcolor = c_white
			drawalpha += 0.001 * global.fm
		}
	}
}


repeat(global.execute) {
	timer += 1
	if timer % 5 == 0
		image_blend = make_color_hsv(irandom_range(0, 255), 255, 255)	
		
		
	if squish == true and image_yscale > 0 {
		image_yscale -= 0.01
		if image_yscale <= 0
			drawself = false
	}
	switch (timer) {
		case 120:
			drawself = true
			flash = 10
			flashcolor = global.flashcolor
			shakeScreen(80, 3, 0.1)
			play_sound(snd_appear, false)
			break;
		case 240:
			play_sound(snd_shadowpendant, false)
			instance_create_depth(576, 352, -10000, obj_rewindthing)
			break;
		case 340:
			obj_rewindthing.move = true
			global.music = play_sound(snd_rewind, true)
			break;
		case 600:
			drawalpha = 0
			break;
		case 800:
			play_sound(snd_gunshot, false)
			squish = true
			break;
		case 1200:
			drawself = false
			audio_stop_sound(snd_rewind)
			play_sound(snd_appear, false)
			flashcolor = global.flashcolor
			instance_destroy(obj_rewindthing)
			global.hard = true
			flash = 5
			drawalpha = 1
			drawgreybackground = true
			depth = -9998
			break;
		case 1300:
			change_progress(2)
			room_goto(mainroom)
			break;
	}
			
}
