image_speed = global.imagespeed
if hp > 0 {
	x = 320 + dsin(global.timer * 220) * 150 
	y = 180 + dcos(global.timer * 200) * 110 + dsin(global.timer * 2000) * bounce
	
	

	if clicked() and global.attackcooldown == 0 {
		play_sound(snd_big_boing_reversed, false)
		play_sound(snd_attack_hit, false)
		play_sound(snd_bigcut, false)
		bounce = 1
		hp -= 1
		global.attackcooldown = 61
	}
	repeat(global.execute) {
		if image_alpha < 1
			image_alpha += 0.02
			
		if bounce < 40 and bounce != 0
			bounce += 1
		
		if bounce == 40
			bounce = 0
	
		if global.hard and instance_number(obj_jinx2attack) >= 3
			hardstopattack = true
		else
			hardstopattack = false
		if actiontime == 1 and hardstopattack == false {
			if attacking == 0 and irandom_range(0, 7) == 0 {
				attacking = 45
				play_sound(snd_higher_pitch_alert, false)
				sprite_index = spr_jinx2attack	
	
			}


		}




		if attacking == 7 {
			var i = instance_create_depth(x, y, -10000, obj_jinx2attack)	
			i.immortal = global.hard
			play_sound(snd_low_boing2, false)
			sprite_index = spr_jinx2
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
		instance_destroy(obj_sillyjinx)
		instance_destroy(obj_sillyjinxlaser)
		instance_destroy(obj_note)
		instance_destroy(obj_jinx2attack)
		sprite_index = spr_jinx2dead
		play_sound(snd_boom_cloud, false)
		play_sound(snd_squeaky_toy, false)
		obj_hurt.phase = 1
		invertcatvar = 200
		deathtimer = 75
		obj_manager.hptrack = 0
		if instance_exists(obj_jinx7)
			 healjinx = 0
		else if global.hard
			healjinx = 10
		else
			healjinx = irandom_range(5, 15)
		
		deathsound = true
	}
	if deathtimer > 25 {
		x = 320 + dcos(global.timer * 500 + 5) * invertcatvar
		y = 180 + dsin(global.timer * 50 + 10) * invertcatvar
	}
	
	repeat (global.execute) {
		if healjinx > 0 and deathtimer % 2 == 0 {
			instance_create_depth(x, y, -9999, obj_healingjinx)
			healjinx -= 1
		}
		
	
		if deathtimer > 25 
			invertcatvar -= 4
		else 
			image_alpha -= 0.02
	

		deathtimer -= 1
	
		if image_alpha <= 0 
			instance_destroy(id)
	}
}

