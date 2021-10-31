if intro == false {
	x = obj_jinx4.x - 2
	y = obj_jinx4.y + 12
}
else { // hardcoded instance id!!! cringe!!!
	x = inst_2D28C6F5.x - 2 
	y = inst_2D28C6F5.y + 12
}



if clicked() {
	if intro == false {
		obj_jinx4.switchguitar *= -1
		obj_jinx4.hp -= 1
	}
	
	
	audio_play_sound(snd_minecraft_hit, 10, false)
}


if angletimer < 5
	image_angle += 1	
	
else
	image_angle -= 1	


angletimer += 1

if angletimer == 10
	angletimer = 0
	
	

if sizetimer <= 160 and sizetimer > 80 {
	image_xscale += 0.0002
	image_yscale += 0.0002
}

if sizetimer <= 80 {
	image_xscale -= 0.0002
	image_yscale -= 0.0002
}

if sizetimer == 0
	sizetimer = 160
	
sizetimer -= 1

show_debug_message(image_xscale)