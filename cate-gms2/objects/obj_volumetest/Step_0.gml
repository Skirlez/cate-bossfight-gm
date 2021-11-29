if clicked() {
	audio_play_sound(snd_music_phase3, 10, false)
	image_index = 1
}
	
if image_index == 1 {
	if notettimer > 0
		notettimer -= 1
	else {
		repeat(double) {
			i = instance_create_depth(x, y, -10000, obj_note)	
			i.harmless = true
			i.sprite_index = spr_brightnote
		}
		if double == 1
			double = 2
		else
			double = 1
			
		notettimer = 20
	}
	
	if !mouse_check_button(mb_left) { 
		audio_stop_sound(snd_music_phase3)
		image_index = 0
		notettimer = 20
	}

}