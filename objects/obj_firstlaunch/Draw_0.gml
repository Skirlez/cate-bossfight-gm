// this reeeaaalllllly sucks
repeat (global.execute) {
	timer += 1
	if timer == 60 or timer == 320 or timer == 580 or timer == 850
		play_sound(snd_firstlaunch, false)
	else if timer > 60 and timer < 720 {
		if vel[0] > 0
			vel[0] -= 0.05
		else
			vel[0] = 0
		if alpha[0] < 1
			alpha[0] += 0.1
		
		up[0] -= vel[0]
		
		if timer > 320 {
			if vel[1] > 0
				vel[1] -= 0.05
			else
				vel[1] = 0
			if alpha[1] < 1
				alpha[1] += 0.1
		
			up[1] -= vel[1]
			
			if timer == 420
				play_sound(snd_audio_appearance, false)
			else if timer > 420 and timer <= 460 {
				obj_mousebox.image_xscale += 0.025	
				obj_mousebox.image_yscale += 0.025	
				obj_mousebox.image_angle += 9
			}
			
			if timer > 580 {
				if vel[2] > 0
					vel[2] -= 0.05
				else
					vel[2] = 0
				if alpha[2] < 1
					alpha[2] += 0.1
		
				up[2] -= vel[2]	
				
			}
		}
	}
	else if timer > 720 {
		if alpha[0] > 0 {
			alpha[0] -= 0.1	
			alpha[1] -= 0.1	
			alpha[2] -= 0.1	
		}
		if timer > 850 and timer < 1100 {
			if vel[3] > 0
				vel[3] -= 0.05
			else
				vel[3] = 0
			if alpha[3] < 1
				alpha[3] += 0.1	
			up[3] -= vel[3]	
			
			
		}
		if timer > 1300 {
			alpha[3] -= 0.1
				
			if timer == 1400 {
				play_sound(snd_pluck, false)
				instance_destroy(all, false)
				room_goto(title)
			}
		}
		
	}
	
}
draw_set_color(c_white)
draw_set_font(font_fixedsys)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
if timer > 60 {
	draw_set_alpha(alpha[0])
	draw_text(320, 160 + up[0], "This is a Deltarune reference.")

	if timer > 320 {
		draw_set_alpha(alpha[1])
		draw_text(320, 175 + up[1], "Check this cool animation out.")

		
		if timer > 580 {
			draw_set_alpha(alpha[2])
			draw_text(320, 190 + up[2], "That was bad.")
	
			
			if timer > 850 {
				draw_set_alpha(alpha[3])
				draw_text(320, 160 + up[3], "This game contains flashing colors and screen shake.\nPlease tune the settings in the main menu\nto your liking.\n\nAlso, you can press the middle mouse button\nto skip any cutscene.")
			
			}
		}
	}
	
	draw_set_alpha(1)	
}

