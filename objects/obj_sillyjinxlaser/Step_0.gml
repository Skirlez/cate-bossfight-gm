repeat(global.execute) {
	timer -= 1


	if timer == 0 {
		hspeed = 0
		shakeScreen(40, 5, 0.2)
		repeat(120){
			var i = instance_create_depth(640, y, -10001, obj_note)	
			i.sprite_index = spr_brightnote
		}
		audio_play_sound(snd_explosion, 10, false)
	}
		


	if timer == -120
		instance_destroy(id)
	
	
	if damage == false and on_mouse() {
		global.hp -= 1
		audio_play_sound(snd_basketball_bounce, 10, false)
		damage = true	
	}
}

if timer < 0 {
	hspeed = -10 * global.fm
}	
else if timer > 0 {
	hspeed = 60 * global.fm	
}
