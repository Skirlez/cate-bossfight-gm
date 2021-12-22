if clicked() {
	audio_play_sound(snd_music_phase3, 10, false)
	image_index = 1
}
	
repeat(global.execute) {
	if image_index == 1 {
		if notettimer > 0
			notettimer -= 1
		else {
		
			repeat(irandom_range(1, 3)) {
				i = instance_create_depth(x, y, -10000, obj_note)	
				i.harmless = true
				i.sprite_index = spr_brightnote
			}
			
			notettimer = 20
		}
	
		if !mouse_check_button(mb_left) { 
			audio_stop_sound(snd_music_phase3)
			image_index = 0
			notettimer = 20
		}

	}
}