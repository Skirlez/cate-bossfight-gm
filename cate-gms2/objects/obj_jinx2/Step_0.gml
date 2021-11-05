if hp > 0 {
	x = 320 + dsin(global.timer * 220) * 150 
	y = 160 + dcos(global.timer * 200) * 110 + dsin(global.timer * 2000) * bounce
	
	if image_alpha < 1
		image_alpha += 0.02

	if clicked() and global.attackcooldown == 0 {
		audio_play_sound(snd_big_boing_reversed, 10, false)
		audio_play_sound(snd_attack_hit, 10, false)
		audio_play_sound(snd_bigcut, 10, false)
		bounce = 1
		hp -= 1
		global.attackcooldown = 61
	}

	if bounce < 40 and bounce != 0
		bounce += 1
		
	if bounce == 40
		bounce = 0
	
	
	if actiontime == 1 {
		if attacking == 0 and irandom_range(0, 4) == 3 {
			attacking = 45
			audio_play_sound(snd_higher_pitch_alert, 10, false)
			sprite_index = spr_jinx2attack	
	
		}


	}




	if attacking == 7 {
		instance_create_depth(x, y, -10000, obj_jinx2attack)	
		audio_play_sound(snd_low_boing2, 10, false)
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
else {
	if deathsound == false {
		instance_destroy(obj_sillyjinx)
		instance_destroy(obj_sillyjinxlaser)
		sprite_index = spr_jinx2dead
		audio_play_sound(snd_boom_cloud, 10, false)
		audio_play_sound(snd_squeaky_toy, 10, false)
		deathsound = true
		invertcatvar = 200
		deathtimer = 75
		obj_manager.hptrack = 0
		healjinx = irandom_range(5, 15)
	}
	
	if healjinx > 0 and deathtimer % 2 == 0 {
		instance_create_depth(x, y, -9999, obj_healingjinx)
		healjinx -= 1
	}
	
	
	if deathtimer > 25 {
		x = 320 + dcos(global.timer * 500 + 5) * invertcatvar
		y = 160 + dsin(global.timer * 50 + 10) * invertcatvar
		invertcatvar -= 4
	}
	else 
		image_alpha -= 0.02
	

	deathtimer -= 1
	
	if image_alpha <= 0 
		instance_destroy(id)
}

