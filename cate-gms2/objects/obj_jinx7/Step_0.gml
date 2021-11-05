
if timer % 5 == 0
	image_blend = make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255))
	
if go == true {
	x = 320 + dsin(global.timer * 200) * 200
	y = 160 + dcos(global.timer * 180) * 110
}


timer += 1


if clicked() and global.attackcooldown == 0 and go = true {
	audio_play_sound(snd_punchstrong, 10, false)
	audio_play_sound(snd_saber3, 10, false)
	audio_play_sound(snd_attack_hit, 10, false)
	spintimer = 40
	image_xscale = 0.1
	spintarget = -0.1
	global.attackcooldown = 61
	if irandom_range(0, 8) == 8
		instance_create_depth(320, 160, -9999, obj_healingjinx)
	hp -= 1
	
}
	
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
	
		}
			
		else if timer == 120 or timer == 180 or timer == 240 {
			audio_play_sound(snd_bombfall, 10, false)
			ang_x = mouse_x
			ang_y = mouse_y
			instance_create_depth(x, y, -10000, obj_laserdot)
		}
		else if timer == 140 or timer == 200 or timer == 260 {
			audio_play_sound(snd_lasergo, 10, false)
			instance_destroy(obj_laserdot)
			i = instance_create_depth(x, y, -10000, obj_shootlaser)	
			i.image_angle = point_direction(x, y, ang_x, ang_y)
		}
		
		if timer == 280 {
			
			timer = -60
			decideattack = irandom_range(0, 4)
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
			decideattack = irandom_range(0, 4)
		}
			
		break;
		
	case 2:
		if timer == 120 
			audio_play_sound(snd_alert, 10, false)
		
		
		if timer > 160 and timer < 300 {
			i = instance_create_depth(x, y, -10001, obj_note)
			i.sprite_index = spr_brightnote	
			audio_play_sound(snd_elecguitar, 10, false)
		}
		
		if timer == 300 {
			timer = -60
			decideattack = irandom_range(0, 4)
		}
		
		break;
		
	case 3:
		if timer == 50 
			audio_play_sound(snd_impact, 10, false)
		
		if timer >= 50 and timer <= 90 and timer % 10 == 0 {
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
				decideattack = irandom_range(0, 4)
				repeatattack = 3	
			}
				
			
		}
		break;
		
	case 4:
	if timer == 100
		audio_play_sound(snd_a_piano, 10, false)

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
		decideattack = irandom_range(0, 3)
	}
	break;
}


if hp <= 0 or keyboard_check_pressed(ord("Q")) {
	instance_create_depth(x, y, -9999, obj_bonusend)
	room_goto(bonusend)
}
