// all of this sucks and is rushed I do not care shut up
var i
image_speed = global.imagespeed

x = 320 + dsin((global.timer - timeroffset) * 200) * 200
y = 180 + dcos((global.timer - timeroffset) * 180) * 110

if go == false
	timeroffset += (delta_time / 1000000) * global.gamespeed




if hp == 1 and global.hard == false and image_yscale == 0.1 {
	var dist = point_distance(mouse_x, mouse_y, x, y)
	if dist < 200 {
		global.gamespeed = dist / 200
		audio_emitter_pitch(global.soundemitter, dist / 200)
	}
	else {
		global.gamespeed = 1
		audio_emitter_pitch(global.soundemitter, 1)
	}
}
var click = clicked()
if click == true and global.attackcooldown == 0 and go == true {
	play_sound(snd_punchstrong, false)
	play_sound(snd_saber3, false)
	play_sound(snd_attack_hit, false)
	spintimer = 40
	nobgspin = false
	image_xscale = 0.1
	spintarget = -0.1
	global.attackcooldown = 61
	if irandom_range(0, 8) == 8
		instance_create_depth(320, 180, -9999, obj_healingjinx)
	hp -= 1
}
else if click == 2 and global.scoretoggle and image_yscale == 0.1 {
	global.misses += 1
	play_sound(snd_miss, false)	
}
repeat(global.execute) {
	
	if timer % 5 == 0 and whitetimer == 0
		image_blend = make_color_hsv(irandom_range(0, 255), 255, 255)
	
	if whitetimer > 0 {
		whitetimer -= 1
		image_blend = c_white	
	}
	timer += 1
	
	if spintimer > 0 {
	
		var spinspeed = spintimer
		if spinspeed < 11
			spinspeed = 11
		if nobgspin == false
			obj_jinx7_bg.timeroffset += spintimer * 0.002
		if spintarget = -0.1 {
			if image_xscale <= spintarget
				spintarget = 0.1
			else
				image_xscale -= 0.001 * spinspeed
		}
		else if spintarget = 0.1 {
			if image_xscale >= spintarget 
				spintarget = -0.1
			else
				image_xscale += 0.001 * spinspeed
		}

		
		if spintimer != 1
			spintimer -= 1
		else if abs(image_xscale) > 0.09 {
			spintimer = 0
			nobgspin = false
		}
			
	}
	else 
		image_xscale = 0.1
	// this sucks
	switch (decideattack) {
		case 0:
			if global.hard 
				var condition = timer % 15 == 0
			else
				var condition = timer % 60 == 0
			if timer == 0 {
				play_sound(snd_lasercharge, false)
				i = instance_create_depth(x, y, -10000, obj_laserdot)
				i.update = true
				i.image_alpha = 0
			}
			else if timer >= 120 and condition and timer <= 240 {
				instance_destroy(obj_laserdot)
				play_sound(snd_bombfall, false)
				laserangle = point_direction(x, y, mouse_x, mouse_y)
				i = instance_create_depth(x, y, -10000, obj_laserdot)
				i.image_xscale = 2
				i.image_yscale = 2
				i.becomelaser = true
				i.timer = 20
				
			}

		
			if timer == 300 {
				timer = -60
				decideattack = fairirandom(0, 5)
			}

			
			break;
		case 1:
			if timer == 90 {
				play_sound(snd_higher_pitch_alert, false)
				whitetimer = 40	
			}
			if global.hard {
				if timer == 100 {
					play_sound(snd_gunshot, false)
					spintimer = 40	
					nobgspin = true
				}
				if timer > 100 and timer <= 120 
					image_yscale -= 0.005
				if timer == 180 {
					summon = instance_create_depth(x, y, depth, choose(obj_jinx1, obj_jinx2, obj_jinx5))
					summon.hp = 4
				}
				if timer = 182 {
					nobgspin = true
					spintimer = 40
					play_sound(snd_sparkles, false)
				}
				if timer > 182 and image_yscale < 0.1
					image_yscale += 0.005
				if timer == 181 and instance_exists(summon) {
					timer -= 1
					timeroffset += 1 / 60
				}
				
				
			}
			else {
				/*
				if global.hard 
					var condition = timer % 3 == 0
				else
				*/
					var condition = timer % 20 == 0
				if timer > 120 and condition and timer < 300 {
					instance_create_depth(x, y, -10000, obj_jinx7attack1)	
					play_sound(snd_low_boing, false)	
				}
			}
			
		
			if timer == 300 {
				timer = -60
				decideattack = fairirandom(0, 5)
			}
			
			break;
		
		case 2:
			if timer == 120  {
				play_sound(snd_alert, false)
				whitetimer = 40
			}
		
			if timer > 160 and timer < 190 {
				i = instance_create_depth(x, y, -10001, obj_note)
				i.sprite_index = spr_brightnote	
				play_sound(snd_elecguitar, false)
			}
		
			if timer == 210 {
				if global.hard {
					repeat (2) {
						var i = instance_create_depth(x, y, -10001, obj_jinx6attack)
						i.calcdir = true
						i.dir = -point_direction(x, y, mouse_x, mouse_y) + irandom_range(-90, 90)
						i.go = true
						i.bomb = true
						i.brightnotes = true
					}
				}
				else
					instance_create_depth(x, y, -10000, obj_jinx7attack1)	
				play_sound(snd_low_boing, false)
			}
		
			if timer > 230 and timer < 280 {
				i = instance_create_depth(x, y, -10001, obj_note)
				i.sprite_index = spr_brightnote	
				play_sound(snd_elecguitar, false)
			}
		
			if timer == 300 {
				timer = -60
				decideattack = fairirandom(0, 5)
			}
		
			break;
		
		case 3:
			if timer == 50 
				play_sound(snd_impact, false)
		
			if timer >= 50 and timer <= 80 and timer % 10 == 0 {
				i = instance_create_depth(x, y, -10000, obj_jinx6attack)	
				i.spin = beginsixpart
				i.object = id
				i.mercy = true
				if global.hard {
					i.bomb = true
					i.brightnotes = true	
				}
				beginsixpart += 2
			}
			

	
			if timer >= 120 and timer < 128 and timer % 2 == 0 {
				i = instance_create_depth(x, y, -10000, obj_jinx6attack)
				i.spin = (timer - 120)
				i.object = id
				if global.hard {
					i.bomb = true
					i.brightnotes = true
				}
			}
		
			if timer == 130 {
				obj_jinx6attack.go = true
				play_sound(snd_scytheburst, false)
			}
		
			else if timer == 140 {
				if repeatattack > 0 {
					repeatattack -= 1
					timer = 119
				}
				else {
					timer = -60
					decideattack = fairirandom(0, 5)
					if global.hard
						repeatattack = 0
					else
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
				play_sound(snd_a_piano, false)
				warnboxheight = 0
			}
		
			if timer == 120
				instance_destroy(obj_warnbox)
			
			if timer >= 120 and timer % 30 == 0 and timer < 250 {
				var i = instance_create_depth(-640, 320 - jinxlaser, -10000, obj_sillyjinxlaser)
				if global.hard and jinxlaser == 150
					i.bomb = true
				audio_stop_sound(snd_boom_cloud2)
				play_sound(snd_drum_boing, false)
				play_sound(snd_boom_cloud2, false)
		
				jinxlaser += 75
			}
	
			if timer == 250 {
				timer = -60
				jinxlaser = 0	
				decideattack = fairirandom(0, 5)
			}
			break;
		
		case 5:
			if timer > 100 and timer <= 120 
				image_yscale -= 0.005

			else if timer > 120 and timer <= 220 
				timeroffset += 1 / 60
				
				
			else if timer > 220 and image_yscale < 0.1
				image_yscale += 0.005

			switch (timer) {
				case 100:
					play_sound(snd_gunshot, false)
					spintimer = 40	
					nobgspin = true
					break;
				case 160:
					instance_create_depth(x, y, depth, obj_jinx7attack2)
					break;
				case 220:
					play_sound(snd_sparkles, false)
					spintimer = 40	
					nobgspin = true
					break;
				case 250:
					image_yscale = 0.1
					timer = -60
					decideattack = fairirandom(0, 5)
					break;
			}
			break;
	}
}

if hp <= 0 {
	if global.hard = false {
		room_goto(hardmodecutscene)
		award_reset_score(4200, 6, 15)	
	}
	else {
		instance_create_depth(x, y, -9999, obj_bonusend)
		room_goto(bonusend)
		award_reset_score(6000, 8, 30)
	}
}
