if timer > 30
	image_alpha -= 0.02 * global.fm


if image_alpha <= 0
	instance_destroy(id)
	
if hit == false and on_mouse() and image_alpha == 1 {
	global.hp -= 2
	audio_play_sound(snd_basketball_bounce, 10, false)
	hit = true
}
	
timer += 1