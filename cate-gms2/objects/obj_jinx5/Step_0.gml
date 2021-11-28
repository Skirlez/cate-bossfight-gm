if hp > 0 {
	if timer == 0
		jump = 40
	
	if timer > 0 and timer < 8 and floor(timer) == timer {

		if 5 > round(3 + (hp / 3))
			x = 320 + dsin((global.timer * 200) + (5 * 60)) * 160
		else
			x = 320 + dsin((global.timer * 150) + (5 * 60)) * 110	
	
		
		jump -= 10
		y -= jump
	}


	timer += 0.5
	if timer == 9 {
		if jumpingVar > round(3 + (hp / 3))  {
			action = 0 // attack
			jumpingVar = 0	
			sprite_index = spr_jinx5attack
			image_speed = 0
			image_index = 0
			audio_play_sound(snd_bass_beatbox, 10, false)
			clickcooldown = true
		}
		
		else {
			jumpingVar += 1
			action = 1 // reset
		}
		
	}
		
	if action == 1 {
		if timer == 10 {
			timer = 0
		}
	
	
	}
	else {
	
		if timer == 19 {
			i = instance_create_depth(x, y,  -10000, obj_jinx5attack)
			i.image_angle = image_angle
			audio_play_sound(snd_bomb, 10, false)	
			audio_play_sound(snd_cymbal_crash, 10, false)	
			clickcooldown = false
			sprite_index = spr_jinx5
			image_speed = 0.25
			image_index = 0
			timer = 0
		}

	}




	if clicked() and global.attackcooldown == 0 and clickcooldown = false { 
		spintimer = 0
		image_angle = 0	
		global.attackcooldown = 61
		audio_play_sound(snd_aliencreek, 10, false)
		audio_play_sound(snd_attack_hit, 10, false)
		audio_play_sound(snd_bigcut, 10, false)
		hp -= 1
	}

	if spintimer <= 60 {
		image_angle += animcurve_channel_evaluate(spincurvechannel, spintimer / 60) * 30
		spintimer += 1
	}

	else
		image_angle = 0
}
else {
	if deathtimer == 0 {
		obj_hurt.phase = 1
		audio_play_sound(snd_jinx5death, 10, false)
		image_speed = 0
		image_index = 0
		image_angle = 0
	}
	if deathtimer < 312 and deathtimer > 30 {
		image_angle += deathtimer / 10
		image_speed = 1
	}
	else if deathtimer > 312 {
		image_speed = 0
		image_alpha -= 0.015
		image_xscale += 0.004
		image_yscale += 0.004
	}
	
	deathtimer += 1
	
	
	if image_alpha <= 0
		instance_destroy(id)
}