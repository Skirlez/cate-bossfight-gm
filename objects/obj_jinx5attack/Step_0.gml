image_alpha -= 0.05 * global.fm
image_xscale += 0.02 * global.fm
image_yscale += 0.02 * global.fm



if image_alpha <= 0
	instance_destroy(id)
	
if on_mouse() {
	damage_player(2)
	play_sound(snd_basketball_bounce_lowquality, false)
	instance_destroy(id)
}