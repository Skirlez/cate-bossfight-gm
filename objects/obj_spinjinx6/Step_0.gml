var mult
if global.hard == false
	mult = 50
else 
	mult = 400
y = 180 + dcos(global.timer * mult + 6 * 60) * global.distance
x = 320 + dsin(global.timer * mult + 6 * 60) * global.distance


if clicked() == true and global.timer <= 15
	play_sound(snd_gloopboing, false)
	
	