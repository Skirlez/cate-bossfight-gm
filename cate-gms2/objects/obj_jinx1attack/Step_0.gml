move_towards_point(x + dcos(dir) * 50, y + dsin(dir) * 50, move * global.fm)

if move > 0
	move -= 0.1 * global.fm
	
	
if on_mouse() {
	global.hp -= 1
	audio_play_sound(snd_basketball_bounce, 10, false)
	instance_destroy(id)
}