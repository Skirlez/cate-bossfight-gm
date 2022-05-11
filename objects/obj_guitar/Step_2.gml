if intro == false {
	x = obj_jinx4.x - 2
	y = obj_jinx4.y + 12
	if image_alpha < 1 and obj_jinx4.hp > 0
		image_alpha += 0.04 * global.fm
	
}
else { // hardcoded instance id!!! cringe!!!
	image_alpha = 1
	x = inst_2D28C6F5.x - 2 
	y = inst_2D28C6F5.y + 12
	
	if move == true repeat(global.execute) {
		
		if notettimer > 0
			notettimer -= 1
		else {
			repeat(choose(1, 2)){
				var i = instance_create_depth(x, y, -10000, obj_note)	
				i.harmless = true
				if global.hard  
					i.bounce = 1
				
			}
			notettimer = 90
		}
		
	}
}


if intro == true or obj_jinx4.hp > 0 {
	if clicked() and !audio_is_playing(snd_head_shake) {
		if intro == false and obj_jinx4.starttimer == 0 {
			obj_jinx4.switchguitar *= -1
			obj_jinx4.hp -= 1
			global.hp += 1
			play_sound(snd_head_shake, false)
			global.attackcooldown = 61	
		}
	
		if intro == true and global.timer <= 15 or intro == false { // good coding
			if intro == false and obj_jinx4.starttimer == 0   
				play_sound(snd_attack_hit, false)
			play_sound(snd_minecraft_hit, false)
		}
			
	}


	repeat(global.execute) {
		if intro == false or intro == true and move == true {
		
			if angletimer < 5
				image_angle += 1	
	
			else
				image_angle -= 1	

			if global.hard and angletimer % 5 == 0
				image_blend = make_color_hsv(irandom_range(0, 255), 255, 255)
			angletimer += 1
			
			if angletimer == 10
				angletimer = 0
	
	
	
			if sizetimer <= 160 and sizetimer > 80 {
				image_xscale += 0.0002
				image_yscale += 0.0002
			}

			if sizetimer < 80 {
				image_xscale -= 0.0002
				image_yscale -= 0.0002
			}

			if sizetimer == 0
				sizetimer = 160
	
			sizetimer -= 1
		}
		else
			image_blend = c_white
	
		if intro == false and obj_jinx4.starttimer == 0 { 
	
			attacktimer += 1
			if attacktimer < notes and (round(x + 2) == 50 or round(x + 2) == 590) { // position check to make sure it doesn't fire while moving
				if global.hard {
					if bombtimer != 0 {
						var i = instance_create_depth(x, y, -10001, choose(obj_jinx1attack, obj_jinx2attack))
						i.dir += irandom_range(-90, 90)	
						bombtimer -= 1
					}
					else {
						repeat (3) {
							var i = instance_create_depth(x, y, -10001, obj_jinx6attack)
							i.calcdir = true
							i.dir = -point_direction(x, y, mouse_x, mouse_y) 
							i.go = true
							i.bomb = true
							i.dir += irandom_range(-90, 90)	
						}
						bombtimer = 120
					}
					audio_sound_pitch(snd_elecguitar, sin(global.timer) + 1)
				}
				else
					var i = instance_create_depth(x, y, -10001, obj_note)
					
				
				play_sound(snd_elecguitar, false)
			}


			if attacktimer == 120 and obj_jinx4.hp <= 5
				notecooldown += 1


			if 2 < (0.3 * obj_jinx4.hp) {
				if attacktimer >= 240 + bonuswait {
					attacktimer = 0
					bonuswait = 0	
					notes = irandom_range(40, 80)
				}
			}
			else if attacktimer >= 160 + (0.3 * obj_jinx4.hp) + bonuswait {
				attacktimer = 0
				bonuswait = 0	
				notes = irandom_range(40, 80)
			}
	
	
			if notecooldown == 5 {
				bonuswait = 160
				notecooldown = 0	
			}
		}
	}
}
else {
	image_xscale += 0.01 * global.fm
	image_yscale += 0.01 * global.fm
	image_alpha -= 0.01 * global.fm
	if image_alpha <= 0
		instance_destroy(id)
}