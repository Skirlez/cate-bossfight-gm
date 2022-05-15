var sound
px = px + ((dsin(global.timer * 700) * damn) - px) / 8 * global.fm
py = py + ((dsin(global.timer * 500) * damn) - py) / 8 * global.fm


x = px + 320
y = py + 180
repeat(global.execute) {

	if damn != 0
		damn -= 2.5
	
	
	timer += 1


	// don't do this

	switch (timer) {
		case 120:
		case 180:
		case 240:
		case 300:
			play_sound(snd_undertalehurt, false)
			sound = play_sound(snd_boom_cloud, false)
			pitch += 0.01
			audio_sound_pitch(sound, pitch)
			image_index += 1
			damn = 100
			break;
		
		case 360:
		case 390:
		case 420:
		case 450:
			audio_stop_sound(snd_boom_cloud)
			play_sound(snd_undertalehurt, false)
			sound = play_sound(snd_boom_cloud, false)
			pitch += 0.025
			audio_sound_pitch(sound, pitch)
			image_index += 1
			damn = 50
			break;
	
		case 480:
		case 500:
		case 520:
		case 540:
			audio_stop_sound(snd_boom_cloud)
			play_sound(snd_undertalehurt, false)
			sound = play_sound(snd_boom_cloud, false)
			pitch += 0.025
			audio_sound_pitch(sound, pitch)
			image_index += 1
			damn = 50

	
	
	}


	if timer > 555 and timer % 6 == 0 {
		audio_stop_sound(snd_boom_cloud)
		play_sound(snd_undertalehurt, false)
		sound = play_sound(snd_boom_cloud, false)
		pitch += 0.05
		audio_sound_pitch(sound, pitch)
		image_index += 1
		damn += 5
	}

	if timer > 605
		damn += 5


	if timer == 660 {
		instance_create_depth(x, y, -9999, obj_explosion)
		audio_stop_sound(snd_boom_cloud)
		sound = play_sound(snd_boom_cloud, false)
		audio_sound_pitch(sound, 0.5555)
		instance_destroy(id)	
	}
	
}

