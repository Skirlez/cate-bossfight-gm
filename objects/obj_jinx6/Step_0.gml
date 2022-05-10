image_speed = global.imagespeed
if hp <= 0 {
	if global.hard {
		repeat (global.execute) {
			if deathsound == false {
				instance_destroy(obj_jinx6attack)
				audio_stop_sound(snd_impact)
				shakeScreen(80, 7, 0.1)
				play_sound(snd_boom_cloud, false)
				deathsound = true
				obj_hurt.phase = 1
				obj_manager.hptrack = 0
			}
		}
		image_alpha -= 0.015 * global.fm
		image_xscale += 0.004 * global.fm
		image_yscale += 0.004 * global.fm	
			
		if image_alpha < 0
			instance_destroy(id)
	}
	else {
		obj_hurt.phase = 1	
		room_goto(ending)
	}
}
else {

	x = 320 + dsin(global.timer * 50) * 110
	y = 180 + dcos(global.timer * 100) * 110


	if clicked() and global.attackcooldown == 0 {
		hp -= 1
		play_sound(snd_gloopboing, false)
		play_sound(snd_attack_hit, false)
		play_sound(snd_bigcut, false)
		global.attackcooldown = 91

	}

	repeat(global.execute) {
		attacktimer += 1


		if attacktimer == 180
			play_sound(snd_impact, false)
	
		if attacktimer >= 240 and attacktimer < 256 and attacktimer % 2 == 0 {
			i = instance_create_depth(x, y, -10000, obj_jinx6attack)
			i.spin = (attacktimer - 240) / 2
		}


		if attacktimer == 308 {
			obj_jinx6attack.go = true	
			play_sound(snd_scytheburst, false)
			if repeatattack != 0 {
				attacktimer = 239
				repeatattack -= 1
			}
			else {
				repeatattack = 3
				attacktimer = 0
			}
		}
	}
}
