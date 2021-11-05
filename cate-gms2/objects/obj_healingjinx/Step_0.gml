if on_mouse() {
	global.hp += 1
	audio_play_sound(snd_b_sax, 10, false)
	instance_destroy(id)
}