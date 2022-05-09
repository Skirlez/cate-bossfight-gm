function shakeScreen(shaketimer, shakestrength = 1, shakedecay = 0) {
	
	if global.shake == 0 {
		global.shake = shaketimer
		global.shakeStrength = shakestrength
		global.shakeDecay = shakedecay
	}
	
	else {
		if shaketimer > global.shake
			global.shake = shaketimer + global.shake / 2
		
		if shakestrength > global.shakeStrength
			global.shakeStrength = shakestrength + global.shakeStrength / 2
	
		if shakedecay > global.shakeDecay
			global.shakeDecay = shakedecay
	}
	
}
