if room == mainroom {
	global.timer = 0
	global.hp = 20
	global.distance = 250
	global.attackcooldown = 0
	global.distortlayer = layer_get_id("Distort")
	show_debug_message(global.distortlayer)
	global.layerfx = layer_get_fx(global.distortlayer)
	audio_play_sound(snd_music_phase1, 10, false)
	phase = 0
	backgroundlayer = layer_get_id("Background")
	background = layer_background_get_id(backgroundlayer)

	whitecolor = 255
	currentjinx = 0	
}

if room == bonuscat {
	global.timer = 0
	global.hp = 10
	scripttimer = 0
	phase = 0
	backgroundlayer = layer_get_id("Background")
	background = layer_background_get_id(backgroundlayer)
	whitecolor = 255
}