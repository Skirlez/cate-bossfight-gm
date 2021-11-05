image_alpha -= 0.02
if image_alpha <= 0
	instance_destroy(id)
	
x = obj_jinx7.x
y = obj_jinx7.y


if hit == false and on_mouse() {
	global.hp -= 2
	audio_play_sound(snd_basketball_bounce, 10, false)
	hit = true
}
	
