var mult
if global.hard == false
	mult = 50
else
	mult = 200
y = 180 + dcos(global.timer * mult + 4 * 60) * global.distance + dsin(global.timer * 2000) * bounce
x = 320 + dsin(global.timer * mult + 4 * 60) * global.distance 

if clicked() and global.timer <= 15 {
	bounce = 1
	play_sound(snd_big_boing_reversed, false)
}
	
	
repeat (global.execute) {
	if bounce < 40 and bounce != 0
		bounce += 1
		
	if bounce == 40
		bounce = 0
}