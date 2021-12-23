// all of this sucks and is rushed I do not care shut up
if go == true {
	x = 320 + dsin(global.timer * 200) * 200
	y = 180 + dcos(global.timer * 180) * 110
	
}







if clicked() and global.attackcooldown == 0 and go = true {
	audio_play_sound(snd_punchstrong, 10, false)
	audio_play_sound(snd_saber3, 10, false)
	audio_play_sound(snd_attack_hit, 10, false)
	spintimer = 40
	image_xscale = 0.1
	spintarget = -0.1
	global.attackcooldown = 61
	if irandom_range(0, 8) == 8
		instance_create_depth(320, 180, -9999, obj_healingjinx)
	hp -= 1
	
}

repeat(global.execute) {
	
	if timer % 5 == 0
		image_blend = make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255))
		
	timer += 1
	
	if spintimer > 0 {
	
		if spintarget = -0.1 {
			if image_xscale == spintarget
				spintarget = 0.1
			else
				image_xscale -= 0.01	
		}
		else if spintarget = 0.1 {
			if image_xscale == spintarget
				spintarget = -0.1
			else
				image_xscale += 0.01	
		}

		
	
		spintimer -= 1
	}
	else 
		image_xscale = 0.1
	
	switch (decideattack) {
		case 0:
			// this sucks
			if timer == 0 {
				audio_play_sound(snd_lasercharge, 10, false)
				i = instance_create_depth(x, y, -10000, obj_laserdot)
				i.update = true
				i.image_alpha = 0
			}
			
			else if timer == 120 or timer == 180 or timer == 240 {
				instance_destroy(obj_laserdot)
				audio_play_sound(snd_bombfall, 10, false)
				laserangle = point_direction(x, y, mouse_x, mouse_y)
				i = instance_create_depth(x, y, -10000, obj_laserdot)
				if timer == 240 {
					i.image_xscale = 2
					i.image_yscale = 2
				}
			}
			else if timer == 140 or timer == 200 or timer == 280 {
				audio_play_sound(snd_lasergo, 10, false)
				i = instance_create_depth(obj_laserdot.x, obj_laserdot.y, -10000, obj_shootlaser)	
				i.image_angle = laserangle
				if timer == 280 {
					i.image_xscale = 2
					i.image_yscale = 2
				}
				instance_destroy(obj_laserdot)

			}
		
			if timer == 360 {
			
				timer = -60
				decideattack = fairirandom(0, 5)
			}

			
			break;
		case 1:
			if timer == 120
				audio_play_sound(snd_higher_pitch_alert, 10, false)
			
			if timer > 120 and timer % 20 == 0 and timer < 300 {
				instance_create_depth(x, y, -10000, obj_jinx7attack1)	
				audio_play_sound(snd_low_boing, 10, false)	
			}
		
			if timer == 300 {
				timer = -60
				decideattack = fairirandom(0, 5)
			}
			
			break;
		
		case 2:
			if timer == 120 
				audio_play_sound(snd_alert, 10, false)
		
		
			if timer > 160 and timer < 190 {
				i = instance_create_depth(x, y, -10001, obj_note)
				i.sprite_index = spr_brightnote	
				audio_play_sound(snd_elecguitar, 10, false)
			}
		
			if timer == 210 {
				instance_create_depth(x, y, -10000, obj_jinx7attack1)	
				audio_play_sound(snd_low_boing, 10, false)
			}
		
			if timer > 230 and timer < 280 {
				i = instance_create_depth(x, y, -10001, obj_note)
				i.sprite_index = spr_brightnote	
				audio_play_sound(snd_elecguitar, 10, false)
			}
		
			if timer == 300 {
				timer = -60
				decideattack = fairirandom(0, 5)
			}
		
			break;
		
		case 3:
			if timer == 50 
				audio_play_sound(snd_impact, 10, false)
		
			if timer >= 50 and timer <= 80 and timer % 10 == 0 {
				i = instance_create_depth(x, y, -10000, obj_jinx6attack)	
				i.spin = beginsixpart
				i.object = id
				i.mercy = true
				beginsixpart += 2
			}
			

	
			if timer >= 120 and timer < 128 and timer % 2 == 0 {
				i = instance_create_depth(x, y, -10000, obj_jinx6attack)
				i.spin = (timer - 120)
				i.object = id
			}
		
			if timer == 130 {
				obj_jinx6attack.go = true
				audio_play_sound(snd_scytheburst, 10, false)
			}
		
			else if timer == 140 {
				if repeatattack > 0 {
					repeatattack -= 1
					timer = 119
				}
				else {
					timer = -60
					decideattack = fairirandom(0, 5)
					repeatattack = 3	
				}
				
			
			}
			break;
		
		case 4:
			if timer >= 40 and timer % 10 == 0 and timer <= 80 { 
				instance_create_depth(580, 300 - warnboxheight, -10001, obj_warnbox)
				warnboxheight += 75
			}
		
		
			if timer == 100 {
				audio_play_sound(snd_a_piano, 10, false)
				warnboxheight = 0
			}
		
			if timer == 120
				instance_destroy(obj_warnbox)
			
			if timer >= 120 and timer % 30 == 0 and timer < 250 {
				instance_create_depth(-640, 320 - jinxlaser, -10000, obj_sillyjinxlaser)
				audio_stop_sound(snd_boom_cloud2)
				audio_play_sound(snd_drum_boing, 10, false)
				audio_play_sound(snd_boom_cloud2, 10, false)
		
				jinxlaser += 75
			}
	
			if timer == 250 {
				timer = -60
				jinxlaser = 0	
				decideattack = fairirandom(0, 5)
			}
			break;
		
		case 5:
			if timer == 100
				audio_play_sound(snd_gunshot, 10, false)
			
			if timer > 100 and timer <= 120 {
				image_yscale -= 0.005
			}
		
			if timer > 120 and timer < 180
				global.timer -= 1 / 60
		
			if timer == 160
				instance_create_depth(x, y, depth, obj_jinx7attack2)
		
			if timer == 220
				audio_play_sound(snd_sparkles, 10, false)
		
			if timer > 220 and image_yscale < 0.1
					image_yscale += 0.005
			
			if timer == 250 {
				image_yscale = 0.1
				timer = -60
				decideattack = fairirandom(0, 5)
			}
	
			break;
	}
}

if hp <= 0 {
	instance_create_depth(x, y, -9999, obj_bonusend)
	room_goto(bonusend)
}
