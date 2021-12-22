executetime = global.fps / 60

if executetime == 3 or executetime == 6
	bonusneed = executetime * executetime

else if floor(executetime) != executetime
	bonusneed = executetime


if executetime != 0.5 {
	if global.execute > 0 {
		global.execute = 0
		frames = 0
		if executetime == 3 or executetime == 6
			bonus += 1
	}

		
	frames += 1

	
	if frames >= executetime {
		global.execute = 1	
		if floor(executetime) != executetime
			bonus += frames - executetime
		
		if bonus >= bonusneed {
			global.execute += 1
			bonus = 0	
		}
	}
}
else
	global.execute = 2
	