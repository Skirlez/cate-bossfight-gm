if timer > 30
	image_alpha -= 0.02 * global.fm


image_speed = global.imagespeed / 2
if image_alpha <= 0
	instance_destroy(id)
	
if hit == false and on_mouse() and image_alpha == 1 {
	damage_player(2)
	play_sound(snd_basketball_bounce, false)
	hit = true
}
	
timer += 1