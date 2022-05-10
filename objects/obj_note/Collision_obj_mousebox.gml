if harmless == false {
	global.hp -= 1
	play_sound(snd_basketball_bounce, false)
	instance_destroy(id)
}