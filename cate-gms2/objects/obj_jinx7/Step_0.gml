
if timer % 5 == 0
	image_blend = make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255))
	
if go == true {
	x = 320 + dsin(global.timer * 200) * 200
	y = 160 + dcos(global.timer * 180) * 110
}


timer += 1


if clicked() and global.attackcooldown == 0 {
	audio_play_sound(snd_punchstrong, 10, false)
	audio_play_sound(snd_saber3, 10, false)
	audio_play_sound(snd_attack_hit, 10, false)
	spintimer = 40
	image_xscale = 0.1
	spintarget = -0.1
	global.attackcooldown = 61
	if irandom_range(0, 9) == 9
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
		if timer == 120
			audio_play_sound(snd_lasercharge, 10, false)
			
		else if timer == 240 or timer == 300 or timer == 360 {
			audio_play_sound(snd_bombfall, 10, false)
			ang_x = mouse_x
			ang_y = mouse_y
		}
		else if timer == 260 or timer == 320 or timer == 380 {
			audio_play_sound(snd_lasergo, 10, false)
			i = instance_create_depth(x, y, -10000, obj_shootlaser)	
			i.image_angle = point_direction(x, y, ang_x, ang_y)
		}
		
		else if timer == 400
			timer = 0

			
		break;
	case 1:
		if timer == 120
			audio_play_sound(snd_higher_pitch_alert, 10, false)
			
		if timer > 120 and timer % 30 == 0 and timer < 300 {
			instance_create_depth(x, y, -10000, obj_jinx7attack1)	
			audio_play_sound(snd_low_boing, 10, false)	
		}
		
		if timer == 300 
			timer = 0
			
		break;
		
	case 2:
		if timer == 120 
			audio_play_sound(snd_alert, 10, false)
		
		
		if timer > 160 and timer < 240 {
			i = instance_create_depth(x, y, -10001, obj_note)
			i.sprite_index = spr_brightnote	
			audio_play_sound(snd_elecguitar, 10, false)
		}
		if timer == 240
			timer = 0
		break;
}


if hp <= 0 or keyboard_check_pressed(ord("Q")) {
	instance_create_depth(x, y, -9999, obj_bonusend)
	room_goto(bonusend)
}
