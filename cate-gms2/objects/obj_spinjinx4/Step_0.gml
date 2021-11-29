y = 160 + dcos(global.timer * 50 + 4 * 60) * global.distance + dsin(global.timer * 2000) * bounce
x = 320 + dsin(global.timer * 50 + 4 * 60) * global.distance 

if clicked() and global.timer <= 15 {
	bounce = 1
	audio_play_sound(snd_big_boing_reversed, 10, false)
}
	
	
if bounce < 40 and bounce != 0
	bounce += 1
		
if bounce == 40
	bounce = 0