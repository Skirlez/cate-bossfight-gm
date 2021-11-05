
if timer % 5 == 0
	image_blend = make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255))
	
if go == true {
	x = 320 + dsin(global.timer * 200) * 200
	y = 160 + dcos(global.timer * 180) * 110
}


timer += 1


if clicked() and global.attackcooldown == 0 {
	audio_play_sound(snd_punchstrong, 10, false)
	audio_play_sound(snd_saber3, 10, false)
	audio_play_sound(snd_attack_hit, 10, false)
	spintimer = 40
	image_xscale = 0.1
	spintarget = -0.1
	global.attackcooldown = 61
	hp -= 1
	
}
	
if spintimer > 0 {
	
	if spintarget = -0.1 {
		if image_xscale == spintarget
			spintarget = 0.1
		else
			image_xscale -= 0.01	
	}
	else if spintarget = 0.1 {
		if image_xscale == spintarget
			spintarget = -0.1
		else
			image_xscale += 0.01	
	}

		
	
	spintimer -= 1
}
else 
	image_xscale = 0.1
	
	
if timer == 120 {
	decideattack = irandom_range(0, 0)
}

