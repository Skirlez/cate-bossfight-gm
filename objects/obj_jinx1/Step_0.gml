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


		if attacking == 6 and global.hard 
			hardlaser -= 1
		

		if attacking == 7 {
			if hardlaser != 0 {
				instance_create_depth(x, y, -10000, obj_jinx1attack)	
				audio_play_sound(snd_low_boing, 10, false)
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
				audio_play_sound(snd_bombfall, 10, false)
				laserangle = point_direction(x, y, mouse_x, mouse_y)
				var i = instance_create_depth(x, y, -10000, obj_laserdot)
				i.image_xscale = 2
				i.image_yscale = 2
				hardlasertimer = 15
			}
		}
		if hardlasertimer != -1 {
			hardlasertimer -= 1
			if hardlasertimer == 0 {
				audio_play_sound(snd_lasergo, 10, false)
				var i = instance_create_depth(obj_laserdot.x, obj_laserdot.y, -10000, obj_shootlaser)	
				instance_destroy(obj_laserdot)
				i.image_angle = laserangle
				i.image_xscale = 2
				i.image_yscale = 2
				hardlasertimer = -1
				hardlaser = 3
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

