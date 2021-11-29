y = 180 + dcos(global.timer * 50 + 6 * 60) * global.distance
x = 320 + dsin(global.timer * 50 + 6 * 60) * global.distance


if clicked() and global.timer <= 15
	audio_play_sound(snd_gloopboing, 10, false)
	
	