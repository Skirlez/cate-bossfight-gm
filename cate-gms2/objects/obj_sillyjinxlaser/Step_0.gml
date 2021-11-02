timer -= 1


if timer == 0
	hspeed = 0
	
if timer < 0 {
	hspeed = -10
}	


if timer == -120
	instance_destroy(id)
	
	
if damage == false and on_mouse() {
	global.hp -= 1
	audio_play_sound(snd_basketball_bounce, 10, false)
	damage = true	
}