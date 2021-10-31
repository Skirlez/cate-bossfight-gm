if hp > 0 {
	x = 320 + dsin(global.timer * 70 + 60) * 110
	y = 160 + dcos(global.timer * 50 + 60) * 110

}
else {
	if deathtimer == 180 {
		instance_destroy(obj_keyboard)
		audio_play_sound(snd_glass_breaking, 10, false)
	}
	
	if deathtimer < 60
		image_alpha -= 1 / 60
		
		
	if deathtimer <= 0
		instance_destroy(id)
	
	deathtimer -= 1
	
}

if clicked() { // very accurate
	if global.attackcooldown == 0 and hp > 0 {
		hp -= 1
		audio_play_sound(snd_attack_hit, 10, false)
		audio_play_sound(snd_bigcut, 10, false)
		global.attackcooldown = 61
	}
	
	if obj_bus.image_speed == 0 {
		audio_play_sound(snd_car_horn, 10, false)	
		obj_bus.image_speed = 1
		if choose(0, 1) == 1 {
			obj_bus.image_blend = c_lime
			audio_play_sound(snd_head_shake, 10, false)
			global.hp += 1
		}
	}
	
}

