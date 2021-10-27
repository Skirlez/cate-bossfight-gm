x = 320 + dsin(global.timer * 70 + 60) * 110
y = 160 + dcos(global.timer * 50 + 60) * 110


if clicked() {
	if obj_bus.image_speed == 0 {
		if hitcooldown == 0 {
			hp -= 1
			hitcooldown = 100
			audio_play_sound(snd_attack_hit, 10, false)
			audio_play_sound(snd_bigcut, 10, false)
		}
		audio_play_sound(snd_car_horn, 10, false)	
		obj_bus.image_speed = 1
		if choose(0, 1) == 1 {
			obj_bus.image_blend = c_lime
			global.hp += 1
		}
	}
		
	
}


if hitcooldown > 0
	hitcooldown -= 1