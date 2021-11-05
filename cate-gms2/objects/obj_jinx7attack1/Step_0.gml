move_towards_point(x + dcos(dir) * 50, y + dsin(dir) * 50, move)

if move > 0
	move -= 0.1
	
	
if on_mouse() {
	global.hp -= 1
	audio_play_sound(snd_basketball_bounce, 10, false)
	instance_destroy(id)
}

image_alpha -= 0.01
if image_alpha <= 0
	instance_destroy(id)