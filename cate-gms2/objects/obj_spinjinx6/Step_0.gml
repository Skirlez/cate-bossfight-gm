y = 160 + dcos(global.timer * 50 + 6 * 60) * global.distance
x = 320 + dsin(global.timer * 50 + 6 * 60) * global.distance


if clicked()
	audio_play_sound(snd_gloopboing, 10, false)