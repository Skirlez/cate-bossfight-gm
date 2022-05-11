function shakeScreen(shaketimer, shakestrength = 1, shakedecay = 0, add = true) {
	if global.allowshake == false
		exit
	global.shakeDecay = shakedecay
	if global.shake == 0 or add == false {
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
