move_towards_point(x + dcos(dir) * 50, y + dsin(dir) * 50, move * global.fm)

if move > 0 
	move -= 0.1 * global.fm
else if global.hard {
	dir = -point_direction(x, y, mouse_x, mouse_y)
	audio_play_sound(snd_low_boing2, 10, false)
	move = random_range(8, 10)
}

	
if on_mouse() {
	global.hp -= 1
	audio_play_sound(snd_basketball_bounce, 10, false)
	instance_destroy(id)
}
if !global.hard
	destroytimer -= global.execute
if destroytimer <= 0
	instance_destroy(id)
