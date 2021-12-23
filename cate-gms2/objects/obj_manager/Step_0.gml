
if (room == mainroom or room == bonuscat) and keyboard_check_pressed(vk_escape) {
	if paused == false and phase != 0 {
		instance_deactivate_all(true)
		instance_activate_object(obj_mousebox)
		audio_pause_all()
		pausemx = mouse_x
		pausemy = mouse_y
		paused = true
		
	}
	else if canunpause = true {
		instance_activate_all()
		audio_resume_all()
		paused = false
	}
}


if paused == false {
	room_speed = global.fps
	global.fm = 60 / global.fps
	global.timer += 1 / global.fps
	
	if global.attackcooldown > 0
		global.attackcooldown -= 1 * global.fm
	else
		global.attackcooldown = 0




	if room == mainroom {
	
	
	
		if phase == 0 {
			if global.distance > 110
				global.distance -= 0.5 * global.fm

			if global.timer > 10.25 {
				obj_spinjinx123.image_speed = 0.5
				obj_spinjinx4.image_speed = 0.5
				obj_spinjinx5.image_speed = 1
				obj_spinjinx6.image_speed = 1
				obj_guitar.move = true
			}	
		
			if global.timer > 15 and global.distance > 0
				global.distance -= 0.5 * global.fm
	

	
			if !audio_is_playing(snd_music_phase1) 
				phase = 1
		}
	
		if phase == 1 and !audio_is_playing(snd_music_phase1) or phase == 0 and keyboard_check_pressed(vk_enter) {
			audio_stop_sound(snd_music_phase1) 
			audio_play_sound(snd_music_phase2, 10, false)
			instance_create_depth(320, 180, -10000, obj_jinx1)
			currentjinx = 1
			background_color = c_white
			instance_destroy(obj_spinjinx123)
			instance_destroy(obj_guitar)
			instance_destroy(obj_spinjinx4)
			instance_destroy(obj_spinjinx5)
			instance_destroy(obj_spinjinx6)
			instance_destroy(obj_note)
			layer_background_blend(background, c_white)
			phase = 2	
	
		}
	
		if phase == 2 and !audio_is_playing(snd_music_phase2) {
			audio_play_sound(snd_music_phase3, 10, true)
			phase = 3	
		}

		repeat(global.execute)
			switch (currentjinx) {
				case 1:	
					if obj_jinx1.image_alpha < 0.5 and obj_jinx1.image_speed == 0
						currentjinx = 2	
					break;
		
				case 2:
					if whitecolor > 0 {
						whitecolor -= 5
						layer_background_blend(background, make_color_rgb(whitecolor, whitecolor, whitecolor))
					}
					else if whitecolor != -100 {
						instance_create_depth(320, 180, -9999, obj_jinx2)
						whitecolor = -100
					}
	
		
					if instance_exists(obj_jinx2) and obj_jinx2.deathsound == true {
						currentjinx = 3
						whitecolor = 0	
					}
		
					break;
		
				case 3:
	
					if whitecolor < 255 {
						whitecolor += 5
						layer_background_blend(background, make_color_rgb(whitecolor, whitecolor, whitecolor))
					}
					else if whitecolor != 256 {
						instance_create_depth(320, 180, -9999, obj_jinx3)
						whitecolor = 256
					}
		
					if !instance_exists(obj_jinx3) and whitecolor == 256 {
						currentjinx = 4
						instance_create_depth(320, 180, -9999, obj_jinx4)
					}
		
					break;
		
				case 4:
					if !instance_exists(obj_jinx4)  {
						instance_create_depth(320, 180, -9999, obj_jinx5)
						currentjinx = 5
						whitecolor = 255
					}
		
					break;	
				case 5:
					if whitecolor > 0 {
						whitecolor -= 5
						layer_background_blend(background, make_color_rgb(whitecolor, whitecolor, whitecolor))	
					}
		
					if !instance_exists(obj_jinx5)  {
						currentjinx = 6

					}
			
					break;
		
				case 6:
					if whitecolor < 255 {
						if whitecolor == 0
							instance_create_depth(320, 180, -9999, obj_jinx6)
							
						whitecolor += 5
						layer_background_blend(background, make_color_rgb(whitecolor, whitecolor, whitecolor))
						
					}
					break;
			}



		if global.hp <= 0 {
			audio_stop_all()
			room_goto(death)
		}
	
		
	}

	else if room == bonuscat {
	
		if scripttimer > 300 {
		
			if whitecolor > 0 {
				whitecolor -= 5 * global.fm
				layer_background_blend(background, make_color_rgb(whitecolor, whitecolor, whitecolor))
			}
			
			if whitecolor <= 0 
				layer_background_blend(background, c_black)	
			
		}
		
			
			
		repeat(global.execute) {
			scripttimer += 1
	
			if quickentrance == true {
				audio_play_sound(snd_finale, 10, true)
				instance_create_depth(320, 180, -9999, obj_jinx7)
				obj_jinx7.go = true
				instance_destroy(obj_pluck)
				layer_background_blend(background, c_black)
				scripttimer = 451
				phase = 1
				quickentrance = false
			
			}
			if phase == 0 {
		

		
				if scripttimer == 240 {
					audio_play_sound(snd_pluck_reversed, 10, false)	
					instance_destroy(obj_pluck)
				}
	

	
				if scripttimer == 360
					audio_play_sound(snd_entrance, 10, false)
			
				if scripttimer == 478 
					layer_background_blend(background, c_white)
		
				if scripttimer == 482 {
					layer_background_blend(background, c_black)
					instance_create_depth(320, 70, -9999, obj_jinx7)
					if global.crosshair == false {
						obj_mousebox.visible = false
						window_set_cursor(cr_default)
					}

					else {
						image_index = 1
						obj_mousebox.visible = true
						window_set_cursor(cr_none)
					}
				}
		
	
		
				if scripttimer == 540 {
					audio_play_sound(snd_finale, 10, true)
					obj_jinx7.go = true
					phase = 1 // thought I would have more phases smh
				}
			}
		}
	
		if global.hp <= 0 {
			audio_stop_all()
			room_goto(bonusdeath)
		}
	
	}
}
