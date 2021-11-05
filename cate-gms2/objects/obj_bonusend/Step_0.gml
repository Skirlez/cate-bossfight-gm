if timer == 20
	audio_play_sound(snd_usefountain, 10, false)

if timer == 650
	audio_play_sound(snd_revival, 10, false)
	
if timer > 650 {
	image_alpha -= 0.005
	image_xscale += 0.01
	image_yscale += 0.01
}
else {
sizetimer -= 1
	
if sizetimer <= 160 and sizetimer > 80 {
	image_xscale += 0.0002
	image_yscale += 0.0002
}

if sizetimer < 80 {
	image_xscale -= 0.0002
	image_yscale -= 0.0002
}

if sizetimer == 0
	sizetimer = 160
}
	
timer += 1