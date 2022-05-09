function shakeScreen(shaketimer, shakestrength = 1, shakedecay = 0) {
	global.shakeDecay = shakedecay
	if global.shake == 0 {
		global.shake = shaketimer
		global.shakeStrength = shakestrength
	}
	
	else {
		if shaketimer > global.shake
			global.shake = shaketimer + global.shake / 2
		
		if shakestrength > global.shakeStrength
			global.shakeStrength = shakestrength + global.shakeStrength / 2

	}
	
}
