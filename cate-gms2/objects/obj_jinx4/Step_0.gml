
if hp > 0 {
	x = px + 320
	y = py + 180
	

	if starttimer > 0 {
		starttimer -= global.fm
		image_alpha += 0.04 * global.fm
		if starttimer >= 5 {
			fx_set_parameter(global.layerfx, "g_DistortAngle", (power(starttimer - 5, 2)) / 4)

		}
			
		layer_set_fx(global.distortlayer, global.layerfx)
		
	}	

	if starttimer <= 0 {
		px = px + ((270 * switchguitar - px) / 4 * global.fm)
		py = dcos(global.timer * (555 / hp)) * 110
		starttimer = 0
	
	}
	


	
}

else repeat(global.execute) {

	if deathtimer == 0 {
		x = 320
		y = 180
		obj_hurt.phase = 1
		audio_play_sound(snd_whatdog, 10, false)
		audio_play_sound(snd_vinethud, 10, false)
	}
	
	if deathtimer == 90
		audio_play_sound(snd_brrr, 10, false)
		
	if deathtimer > 90 and deathtimer < 180
		instance_create_depth(irandom_range(0, 640), irandom_range(0, 360), -10000, obj_decoyjinx4)	
	
	if deathtimer == 180 {
		instance_destroy(obj_decoyjinx4)
		instance_destroy(id)
	}
	deathtimer += 1
	
}