image_speed = global.imagespeed
if hp > 0 {
	x = 320 + dsin(global.timer * 200) * 150 
	y = 180 + dcos(global.timer * 180) * 110 + dsin(global.timer * 2000) * bounce
	
	
		

	if clicked() and global.attackcooldown == 0 {
		audio_play_sound(snd_big_boing, 10, false)
		audio_play_sound(snd_attack_hit, 10, false)
		audio_play_sound(snd_bigcut, 10, false)
		bounce = 40
		hp -= 1
		global.attackcooldown = 61
	}
		
	repeat(global.execute) {
		if image_alpha < 1
			image_alpha += 0.02
			
		if bounce != 0
			bounce -= 1
	
	
		if actiontime == 1 {
			if attacking == 0 and irandom_range(0, 6) == 0 {
				attacking = 45
				audio_play_sound(snd_alert, 10, false)
				sprite_index = spr_jinx1attack	
	
			}


		}




		if attacking == 7 {
			instance_create_depth(x, y, -10000, obj_jinx1attack)	
			audio_play_sound(snd_low_boing, 10, false)
			shakeScreen(10, 1, 0)
			sprite_index = spr_jinx1
		}

		if attacking > 0 {
			attacking -= 1
		}

	
		if actiontime > 0
			actiontime -= 1
		else
			actiontime = 7
		
		
	}
		
}
else {
	if deathsound == false {
		shakeScreen(80, 7, 0.1)
		audio_play_sound(snd_boom_cloud, 10, false)
		obj_hurt.phase = 1
		deathsound = true
		obj_manager.hptrack = 0
	}
	image_speed = 0
	image_alpha -= 0.015 * global.fm
	image_xscale += 0.004 * global.fm
	image_yscale += 0.004 * global.fm
	
	if image_alpha <= 0
		instance_destroy(id)
}
