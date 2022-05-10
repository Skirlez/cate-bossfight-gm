var mult
if global.hard == false
	mult = 50
else
	mult = 200
y = 180 + dcos(global.timer * mult + place * 60) * global.distance + dsin(global.timer * 2000) * bounce
x = 320 + dsin(global.timer * mult + place * 60) * global.distance 


if clicked() and global.timer <= 15 {
	if place == 1 {
		if obj_bus.image_speed == 0 {
			play_sound(snd_car_horn, false)	
			obj_bus.move = true
		}	
	}
	
	else if place == 2 {
		play_sound(snd_big_boing, false)
		bounce = 40	
	}
		
}

repeat(global.execute)
	if bounce > 0 
		bounce -= 1