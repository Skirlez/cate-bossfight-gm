image_speed = global.imagespeed
if hp > 0 {
	x = 320 + dsin(global.timer * 200) * 150 
	y = 180 + dcos(global.timer * 180) * 110 + dsin(global.timer * 2000) * bounce
	
	
		

	if clicked() and global.attackcooldown == 0 {
		play_sound(snd_big_boing, false)
		play_sound(snd_attack_hit, false)
		play_sound(snd_bigcut, false)
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
				play_sound(snd_alert, false)
				sprite_index = spr_jinx1attack	
	
			}


		}


		if attacking == 6 and global.hard 
			hardlaser -= 1
		

		if attacking == 7 {
			if hardlaser != 0 {
				var i = instance_create_depth(x, y, -10000, obj_jinx1attack)	
				if global.hard
					i.move = 12
				play_sound(snd_low_boing, false)
				shakeScreen(6, 1, 0)
				if global.hard == false
					sprite_index = spr_jinx1
				else { 
					if hardmodeattacks > 0 {
						attacking = 15
						hardmodeattacks -= 1
					}
					else {
						hardmodeattacks = irandom_range(7, 10)
						sprite_index = spr_jinx1
					}
				}
			}
			else {
				play_sound(snd_bombfall, false)
				var i = instance_create_depth(x, y, -10000, obj_laserdot)
				i.image_xscale = 2
				i.image_yscale = 2
				i.becomelaser = true
				i.timer = 60
				if laserattacks > 0 {
					attacking = 15	
					laserattacks -= 1
				}
				else {
					laserattacks = 5
					hardmodeattacks = 7
					hardlaser = 4
					sprite_index = spr_jinx1
				}
			}
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
		play_sound(snd_boom_cloud, false)
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

