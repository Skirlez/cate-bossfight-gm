if on_mouse() {
	global.hp += 1
	play_sound(snd_b_sax, false)
	instance_destroy(id)
}