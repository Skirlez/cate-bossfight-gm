
if hp > 0 {
	if starttimer > 0 {
		starttimer -= 1
		image_alpha += 1 / 60
	}	

	else {
		px = px + ((270 * switchguitar - px) / 4)
		py = dcos(global.timer * (555 / hp)) * 110
	
	}


	x = px + 320
	y = py + 160
}

else {
	if deathtimer == 0 {
		x = 320
		y = 160
		obj_hurt.phase = 1
		audio_play_sound(snd_whatdog, 10, false)
		audio_play_sound(snd_vinethud, 10, false)
	}
	
	if deathtimer == 90
		audio_play_sound(snd_brrr, 10, false)
		
	if deathtimer > 90 
		instance_create_depth(irandom_range(0, 640), irandom_range(0, 360), -10000, obj_decoyjinx4)	
	
	if deathtimer == 180 {
		instance_destroy(obj_decoyjinx4)
		instance_destroy(id)
	}
	deathtimer += 1
}