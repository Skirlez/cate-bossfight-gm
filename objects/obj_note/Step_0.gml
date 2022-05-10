move_towards_point(x + (dcos(dir) * 30) * flip_x, y - (dsin(dir) * 30 * flip_y), 3 * global.fm)



if bounce > 0 {
	if nobouncetimer_x != 0
		nobouncetimer_x -= global.execute
	else if x + 10 > room_width or x - 10 < 0 {
		flip_x *= -1	
		bounce -= 1
		nobouncetimer_x = 10
	}
	if nobouncetimer_y != 0
		nobouncetimer_y -= global.execute
	else if y + 10 > room_height or y - 10 < 0 {
		flip_y *= -1	
		bounce -= 1	
		nobouncetimer_y = 10
	}
			
}

