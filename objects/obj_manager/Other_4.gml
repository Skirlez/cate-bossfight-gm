if room == mainroom {
	screenalpha = 0
	sprite_set_offset(spr_keyboard, 480, 360)
	sprite_set_offset(spr_static, 480, 360)
	finaletimer = 0
	global.timer = 0
	global.hp = 20
	if global.hard
		global.distance = 400
	else
		global.distance = 250
	global.attackcooldown = 0
	global.distortlayer = layer_get_id("Distort")
	global.layerfx = layer_get_fx(global.distortlayer)
	global.music = play_sound(snd_music_phase1, false)
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