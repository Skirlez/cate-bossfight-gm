image_alpha -= 0.01
if image_alpha <= 0
	instance_destroy(id)
	
	
if hittime > 0 {
	hittime -= 1
	if on_mouse() {
		global.hp -= 2
		audio_play_sound(snd_basketball_bounce, 10, false)
		hittime = 0	
	}
	
}