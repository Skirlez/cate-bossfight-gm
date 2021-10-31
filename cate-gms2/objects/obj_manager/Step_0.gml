global.timer += 1 / 60


	
if global.distance > 110
	global.distance -= 0.5
	
if global.timer > 15.28 and global.distance > 0
	global.distance -= 0.5
	
	
	
if !audio_is_playing(snd_music_phase1) and phase == 0
	phase = 1

if phase == 1 and !audio_is_playing(snd_music_phase1) {
	audio_play_sound(snd_music_phase2, 10, false)
	instance_create_depth(320, 160, -10000, obj_jinx1)
	currentjinx = 1
	background_color = c_white
	instance_destroy(obj_spinjinx123)
	instance_destroy(obj_guitar)
	instance_destroy(obj_spinjinx4)
	layer_background_blend(background, c_white)
	phase = 2	
	
}
	
if phase == 2 and !audio_is_playing(snd_music_phase2) {
	audio_play_sound(snd_music_phase3, 10, true)
	phase = 3	
}


switch (currentjinx) {
	case 1:	
		if obj_jinx1.image_alpha < 0.5 and obj_jinx1.image_speed == 0
			currentjinx = 2	
		break;
		
	case 2:
		if whitecolor > 0 {
			layer_background_blend(background, make_color_rgb(whitecolor, whitecolor, whitecolor))
			whitecolor -= 5
		}
		else if whitecolor != -100 {
			instance_create_depth(320, 160, -10000, obj_jinx2)
			whitecolor = -100
		}
	
		
		if instance_exists(obj_jinx2) and obj_jinx2.deathsound == true {
			currentjinx = 3
			whitecolor = 0	
		}
		
		break;
		
	case 3:
	
		if whitecolor < 255 {
			layer_background_blend(background, make_color_rgb(whitecolor, whitecolor, whitecolor))
			whitecolor += 5
		}
		else if whitecolor != 256 {
			instance_create_depth(320, 160, -10000, obj_jinx3)
			whitecolor = 256
		}
		
		if !instance_exists(obj_jinx3) and whitecolor == 256 {
			currentjinx = 4
			instance_create_depth(320, 160, -10000, obj_jinx4)
		}
		
		break;
}



if global.attackcooldown > 0
	global.attackcooldown -= 1

if global.hp <= 0 {
	audio_stop_all()
	room_goto(death)
}
	