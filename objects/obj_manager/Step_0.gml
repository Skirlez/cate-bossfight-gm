
if global.execute > 0 {
	camera_set_view_pos(view_camera[0], 0, 0)	
	if global.shake > 0 {
		global.shake -= 1
		if global.shake != 0 {
			var offset_x = global.shakeStrength * sign(irandom_range(-1, 1))
			var offset_y = global.shakeStrength * sign(irandom_range(-1, 1))
			camera_set_view_pos(view_camera[0],  offset_x, offset_y)
			if global.shakeStrength > 0 
				global.shakeStrength -= global.shakeDecay	
			
			if global.shakeStrength <= 0 {
				global.shake = 0
				global.shakeStrength = 0
				global.shakeDecay = 0
				global.offset_x = 0
				global.offset_y = 0
			}
		}
		else {
			global.shakeStrength = 0
			global.shakeDecay = 0
			global.offset_x = 0
			global.offset_y = 0
			
		}
	}
}
if (room == mainroom or room == bonuscat) {
	
	if keyboard_check_pressed(vk_escape) and paused == false and phase != 0 {
		instance_deactivate_all(true)
		instance_activate_object(obj_mousebox)
		audio_pause_all()
		camera_set_view_pos(view_camera[0], 0, 0)	
		pausemx = mouse_x
		pausemy = mouse_y
		paused = true	
		
	}
	
	if mouse_check_button_pressed(mb_left) and paused == true and canunpause == true {
		instance_activate_all()
		audio_resume_all()
		paused = false
	}
}


if paused == false {
	global.timer += (delta_time / 1000000) * global.gamespeed
	global.fm = delta_time / 16666 * global.gamespeed
	global.imagespeed = 16666 * global.fm * global.gamespeed
	if global.attackcooldown > 0
		global.attackcooldown -= 1 * global.fm
	else
		global.attackcooldown = 0




	if room == mainroom {
	
	
		if phase == 0 {
			if global.distance > 110 {
				if global.hard
					global.distance -= 1 * global.fm
				else
					global.distance -= 0.5 * global.fm
			}

			if global.timer > 10.25 {
				obj_spinjinx123.image_speed = global.imagespeed / 2
				obj_spinjinx4.image_speed = global.imagespeed / 2
				obj_spinjinx5.image_speed = global.imagespeed
				obj_spinjinx6.image_speed = global.imagespeed
				obj_guitar.move = true
			}	
		
			if global.timer > 15 and global.distance > 0
				global.distance -= 0.5 * global.fm
	

	
			if !audio_is_playing(snd_music_phase1) 
				phase = 1
		}
	
		if phase == 1 and !audio_is_playing(snd_music_phase1) or phase == 0 and keyboard_check_pressed(vk_enter) {
			audio_stop_sound(snd_music_phase1) 
			global.music = play_sound(snd_music_phase2, false)
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
			global.music = play_sound(snd_music_phase3, true)
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
					if !instance_exists(obj_jinx6)  {
						currentjinx = 7
						audio_sound_gain(snd_music_phase2, 0, 1000)
						audio_sound_gain(snd_music_phase3, 0, 1000)
					}
					break;
					
				case 7:
					finaletimer += 1
					
					if finaletimer >= 60 {
						if finaletimer == 60
							play_sound(snd_music_finalehardmodeintro, false)
						if whitecolor > 0 {
							whitecolor -= 5
							layer_background_blend(background, make_color_rgb(whitecolor, whitecolor, whitecolor))	
						}
					
						if finaletimer == 178 {
							whitescreen = 1.5
							play_sound(snd_appear, false)
							audio_stop_sound(snd_music_phase2)
							audio_stop_sound(snd_music_phase3)
							instance_create_depth(320, -32, -9998, obj_jinx7_bg)
							instance_create_depth(320, 70, -9999, obj_jinx7)
						}
						if finaletimer == 182
							whitescreen = 0
						else if finaletimer == 222 
							obj_jinx7.go = true	
						
					
						if !audio_is_playing(snd_music_finalehardmodeintro) and !audio_is_playing(snd_finale)
							play_sound(snd_finale, true)
					}
	
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
				global.music = play_sound(snd_finale, true)
				instance_create_depth(320, 180, -9999, obj_jinx7)
				instance_create_depth(320, -32, -9998, obj_jinx7_bg)
				obj_jinx7.go = true
				instance_destroy(obj_pluck)
				layer_background_blend(background, c_black)
				scripttimer = 451
				phase = 1
				quickentrance = false
			
			}
			if phase == 0 {
		

		
				if scripttimer == 240 {
					play_sound(snd_pluck_reversed, false)	
					instance_destroy(obj_pluck)
				}
	

	
				if scripttimer == 360
					play_sound(snd_entrance, false)
			
				if scripttimer == 478 {
					whitescreen = 1.5
				}

				
				if scripttimer == 482 {
					whitescreen = 0
					instance_create_depth(320, -32, -9998, obj_jinx7_bg)
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
					global.music = play_sound(snd_finale, true)
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
