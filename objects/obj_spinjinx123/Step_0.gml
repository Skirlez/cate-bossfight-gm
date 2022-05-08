y = 180 + dcos(global.timer * 50 + place * 60) * global.distance + dsin(global.timer * 2000) * bounce
x = 320 + dsin(global.timer * 50 + place * 60) * global.distance 


if clicked() and global.timer <= 15 {
	if place == 1 {
		if obj_bus.image_speed == 0 {
			audio_play_sound(snd_car_horn, 10, false)	
			obj_bus.image_speed = 1
		}	
	}
	
	else if place == 2 {
		audio_play_sound(snd_big_boing, 10, false)
		bounce = 40	
	}
		
}

repeat(global.execute)
	if bounce > 0 
		bounce -= 1