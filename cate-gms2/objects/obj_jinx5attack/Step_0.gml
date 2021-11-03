image_alpha -= 0.05
image_xscale += 0.02
image_yscale += 0.02



if image_alpha <= 0
	instance_destroy(id)
	
if on_mouse() {
	global.hp -= 2
	audio_play_sound(snd_basketball_bounce_lowquality, 10, false)
	instance_destroy(id)
}