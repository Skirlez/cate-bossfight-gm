image_speed = global.imagespeed
if hp > 0 {
	x = 320 + dsin(global.timer * 70 + 60) * 110
	y = 180 + dcos(global.timer * 50 + 60) * 110

}
else {
	if global.hard and dogun == true {
		hp = 5
		summonguntimer = 0
		dogun = false
		instance_destroy(obj_keyboard)
		shakeScreen(80, 3, 0.1)
		audio_play_sound(snd_glass_breaking, 10, false)
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
					audio_play_sound(snd_vinethud, 10, false)
				else
					audio_play_sound(snd_glass_breaking, 10, false)
				obj_hurt.phase = 1
			}
			if deathtimer == 120 and global.hard {
				shakeScreen(80, 7, 0.1)
				audio_play_sound(snd_boom_cloud, 10, false)	
				obj_hurt.phase = 1
			}
			if deathtimer < 120  and deathtimer >= 60 {
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

if summonguntimer != -1 {
	if summonguntimer == 0 {
		sprite_index = spr_jinx3_mad
		audio_play_sound(snd_vinethud, 10, false)
	}
	if summonguntimer == 50 {
		var i = audio_play_sound(snd_audio_appearance, 10, false)
		audio_sound_pitch(i, 1.5)
		instance_create_depth(x, y, depth + 1, obj_gun)
	}
	summonguntimer += 1

}

if clicked() and obj_bus.image_speed == 0 { // very accurate
	
	if global.attackcooldown == 0 and hp > 0 {
		hp -= 1
		audio_play_sound(snd_attack_hit, 10, false)
		audio_play_sound(snd_bigcut, 10, false)
		global.attackcooldown = 61
	}
	

	audio_play_sound(snd_car_horn, 10, false)	
	obj_bus.move = true
	if choose(0, 1) == 1 {
		obj_bus.image_blend = make_color_rgb(0, 255, 0)
		audio_play_sound(snd_head_shake, 10, false)
		global.hp += 1
	}
	
}
	



