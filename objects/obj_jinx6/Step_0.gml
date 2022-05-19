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
		award_reset_score(3300)
		room_goto(ending)
	}
}
else {

	x = 320 + dsin(global.timer * 50) * 110
	y = 180 + dcos(global.timer * 100) * 110

	var click = clicked()
	if click == true {
		audio_stop_sound(snd_gloopboing)
		play_sound(snd_gloopboing, false)
		if global.attackcooldown == 0 {
			hp -= 1
			play_sound(snd_attack_hit, false)
			play_sound(snd_bigcut, false)
			global.attackcooldown = 91
		}
	}
	else if click == 2 and global.scoretoggle {
		global.misses += 1
		play_sound(snd_miss, false)	
	}
	repeat(global.execute) {
		attacktimer += 1


		if attacktimer == 180
			play_sound(snd_impact, false)
		if global.hard
			var condition = attacktimer % 4 == 0
		else
			var condition = attacktimer % 2 == 0
		if attacktimer >= 240 and attacktimer < 256 and condition {
			var i = instance_create_depth(x, y, -10000, obj_jinx6attack)
			i.spin = (attacktimer - 240) / 2
			if global.hard
			i.bomb = true
		}


		if attacktimer == 308 {
			obj_jinx6attack.go = true	
			play_sound(snd_scytheburst, false)
			shakeScreen(20, 3, 0.2)
			if repeatattack != 0 {
				attacktimer = 239
				repeatattack -= 1
			}
			else {
				if global.hard
					repeatattack = 0
				else	
					repeatattack = 3
				attacktimer = 0
			}
		}
	}
}
