image_speed = global.imagespeed
if hp > 0 {
	x = 320 + dsin(global.timer * 70 + 60) * 110
	y = 180 + dcos(global.timer * 50 + 60) * 110

}
else {
	if global.hard and dogun == true {
		hp = 7
		summonguntimer = 0
		dogun = false
		instance_destroy(obj_keyboard)
		shakeScreen(80, 3, 0.1)
		play_sound(snd_glass_breaking, false)
		obj_hurt.phase = 1
	
	}
	else {
		repeat(global.execute) {
	
			if deathtimer == 180 {
				instance_destroy(obj_note)
				instance_destroy(obj_jinx6attack)
				instance_destroy(obj_gun)
				instance_destroy(obj_keyboard)
				shakeScreen(80, 3, 0.1)
				if global.hard
					play_sound(snd_vinethud, false)
				else
					play_sound(snd_glass_breaking, false)
				obj_hurt.phase = 1
			}
			if deathtimer == 60 and global.hard {
				shakeScreen(80, 7, 0.1)
				play_sound(snd_boom_cloud, false)	
				obj_hurt.phase = 1
			}
			if deathtimer < 60 and deathtimer >= 0 {
				image_alpha -= 1 / 60
				if global.hard {
					image_xscale += 0.01
					image_yscale += 0.01
				}	
		

			}
			if deathtimer <= 0
				instance_destroy(id)
	
			deathtimer -= 1
		}
	}
	
}
repeat(global.execute) {
	if summonguntimer != -1 {
		if summonguntimer == 0 {
			sprite_index = spr_jinx3_mad
			award_reset_score(1900) // hard mode reward
			play_sound(snd_vinethud, false)
		}
		if summonguntimer == 50 {
			var i = play_sound(snd_audio_appearance, false)
			audio_sound_pitch(i, 1.5)
			instance_create_depth(x, y, depth - 1, obj_gun)
		}
		summonguntimer += 1
	}
}
var click = clicked()
if click == true and obj_bus.move = false { // very accurate
	
	if global.attackcooldown == 0 and hp > 0 {
		hp -= 1
		play_sound(snd_attack_hit, false)
		play_sound(snd_bigcut, false)
		global.attackcooldown = 61
	}
	

	play_sound(snd_car_horn, false)	
	obj_bus.move = true
	if choose(0, 1) == 1 {
		obj_bus.image_blend = make_color_rgb(0, 255, 0)
		play_sound(snd_head_shake, false)
		global.hp += 1
	}
	
}
else if click == 2 and global.scoretoggle {
	global.misses += 1
	play_sound(snd_miss, false)	
}


