image_index = global.allowshake

if clicked() {
	if global.allowshake == true {
		global.allowshake = false
		global.shake = 0
		global.shakeStrength = 0
		global.shakeDecay = 0
		global.offset_x = 0
		global.offset_y = 0
	}
	else {
		global.allowshake = true
		play_sound(snd_explosion, false)
		shakeScreen(160, 25, 0.2)		
	}
}
