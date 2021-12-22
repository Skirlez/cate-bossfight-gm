executetime = global.fps / 60

if executetime != 0.5 {
	if global.execute > 0 {
		global.execute = 0
		frames = 0
		//need to figure when to add bonus
		bonus += 1
	}

		
	frames += 1

	
	if frames == executetime {
		global.execute = 1	
		if bonus == executetime * executetime {
			global.execute += 1
			bonus = 0	
		}
	}
}
else
	global.execute = 2
	
//show_debug_message(global.execute)