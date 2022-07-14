if hp > 0 {
	// this is a nightmare
	var click = clicked()
	if click == true and global.attackcooldown == 0 and clickcooldown = false { 
		spintimer = 0
		image_angle = 0	
		global.attackcooldown = 61
		play_sound(snd_aliencreek, false)
		play_sound(snd_attack_hit, false)
		play_sound(snd_bigcut, false)
		hp -= 1
	}
	else if click == 2 and global.scoretoggle {
		global.misses += 1
		play_sound(snd_miss, false)	
	}
	if spintimer <= 60
		image_angle += animcurve_channel_evaluate(spincurvechannel, spintimer / 60) * 30 * global.fm
	repeat(global.execute) {
		if image_alpha < 1
			image_alpha += 0.02
		if global.hard and spawnasshole != 120 {
			spawnasshole += 1
			if spawnasshole == 120
				instance_create_depth(670, 64, depth, obj_assholejinx2)
		}
		if timer == 0 {
			jump = 40
			image_index = 0
		}
	
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
				image_index = 0
				play_sound(snd_bass_beatbox, false)
				clickcooldown = true
			}
		
			else {
				jumpingVar += 1
				image_index = 2
				action = 1 // reset
			}
		
		}
		
		if action == 1 {
			if timer == 10 {
				timer = 0
				image_index = 3
			}
	
	
		}
		else {
	
			if timer == 19 {
				i = instance_create_depth(x, y,  -10000, obj_jinx5attack)
				shakeScreen(12, 2, 0)
				i.image_angle = image_angle
				play_sound(snd_bomb, false)	
				play_sound(snd_cymbal_crash, false)	
				clickcooldown = false
				sprite_index = spr_jinx5
				image_index = 0
				timer = 0
			}

		}
		if spintimer <= 60 {
			if spintimer % 3 == 0
				image_index = irandom_range(0, 3)
			spintimer += 1
		}
		else
			image_angle = 0
	}





}
else {
	
	if deathtimer == 0 {
		if global.hard {
			i = play_sound(snd_squeaky_toy, false)
			audio_sound_gain(i, 0.4, 0)
		}
		obj_hurt.phase = 1
		instance_destroy(obj_assholejinx2)
		instance_destroy(obj_jinx2attack)
		var i = play_sound(snd_jinx5death, false)
		if instance_exists(obj_jinx7) {
			audio_sound_set_track_position(i, 5.3)
			deathtimer = 312	
		}
		image_index = 0
		image_angle = 0
	}

	if deathtimer < 312 and deathtimer > 30 {
		if shook == false {
			shakeScreen(280, 0.1, -0.05)
			shook = true	
		}
		image_angle += deathtimer / 10 * global.fm
		image_speed = deathtimer / 50 * global.imagespeed
	}
	else if deathtimer > 312 {
		if shooktwo == false {
			shakeScreen(80, 10, 0.1)
			shooktwo = true	
		}
		image_speed = 0
		image_alpha -= 0.015 * global.fm
		image_xscale += 0.004 * global.fm
		image_yscale += 0.004 * global.fm
	}
	
	deathtimer += global.fm
	
	
	if image_alpha <= 0
		instance_destroy(id)
}