draw_set_color(c_white)
draw_set_font(font_fixedsys)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
//draw_sprite(spr_varframe, 0, 320, 70)
//draw_text(320, 70, fps)

if paused == false {
	if room == mainroom {
	
		if phase == 0 {
			if global.timer > 15.28 {
				screenalpha += 0.005 * global.fm
				draw_set_alpha(screenalpha)
	
				draw_rectangle(0, 0, 640, 360, false)
				draw_set_alpha(1)
			}
		}

		else {
			draw_sprite(spr_varframe, 0, 320, 300)
			draw_text(320, 300, global.hp)
		}

		if currentjinx != 0 {
			object = asset_get_index("obj_jinx" + string(currentjinx))
			if instance_exists(object) {
				/* for anyone lucky enough to be seeing this. please uncomment this code. it wants to be freed.
				var dist = point_distance(mouse_x, mouse_y, object.x, object.y)
				if dist < 200 {
					global.gamespeed = dist / 200
					audio_emitter_pitch(global.soundemitter, dist / 200)
				}
				else {
					global.gamespeed = 1
					audio_emitter_pitch(global.soundemitter, 1)
				}
				*/
			
				if keyboard_check_pressed(ord("Q"))
					object.hp = 0
				//if keyboard_check(ord("E")) 
				//	room_goto(ending)

				
				if global.attackcooldown > 0 {
					draw_sprite(spr_varframe, 0, 320, 50)
					draw_text(320, 50, object.hp)
				}
			}

		}


	}
	else if room == bonuscat {
			if scripttimer > 481 {
				draw_sprite(spr_varframe, 0, 320, 300)
				draw_text(320, 300, global.hp)
			}
				
			if global.attackcooldown > 0 {
				draw_sprite(spr_varframe, 0, 320, 50)
				draw_text(320, 50, obj_jinx7.hp)
			}	
	}
	else if room == hardmodecutscene {
		if obj_hardmodecutscene.drawself == true {
			draw_sprite(spr_varframe, 0, 320, 50)
			draw_text(320, 50, 1)	
		}
	}
	if whitescreen > 0 {
		draw_set_color(whitescreencolor)
		draw_set_alpha(whitescreen)
		if whitescreen >= 1
			draw_clear_alpha(whitescreencolor, 1)
		else
			draw_rectangle(0, 0, 640, 360, false)	
		whitescreen -= 0.01 * global.fm
		draw_set_alpha(1)
	}
}
else {
	draw_set_color(c_grey)
	draw_rectangle(0, 0, 640, 360, false)
	
	draw_set_color(c_black)
	draw_text(320, 30, "The game is paused!")
	draw_text(320, 70, "Press Shift to restart the game.")
	draw_sprite(spr_redsquare, 0, pausemx, pausemy)
	if mouse_x < pausemx + 5 and mouse_x > pausemx - 5 and mouse_y < pausemy + 5 and mouse_y > pausemy - 5 {
		draw_set_color(c_lime)
		draw_text(320, 50, "Left Click to unpause.")
		canunpause = true	
	}
	else {
		draw_set_color(c_red)
		draw_text(320, 50, "You must place your mouse on the red square to unpause.")
		canunpause = false	
	}

	if keyboard_check_pressed(vk_shift) 
		game_restart()
	
}