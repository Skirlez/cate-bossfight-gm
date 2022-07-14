//save load things

ini_open("cate.jinx") // this is my format. I invented  it
if !ini_section_exists("settings") {
	global.scoretoggle = true
	global.intensevis = true
	global.flashcolor = c_white
	global.allowshake = true
	global.volume = 60
	window_set_fullscreen(true)
	if os_type != os_android
		ini_write_real("settings", "scoretoggle", true) 
	ini_write_real("settings", "intensevis", true) 
	ini_write_real("settings", "allowshake", true) 
	ini_write_real("settings", "volume", 60)
	ini_write_real("settings", "fullscreen", true)
}
else {
	if os_type == os_android
		global.scoretoggle = false
	else
		global.scoretoggle = ini_read_real("settings", "scoretoggle", true)
	global.intensevis = ini_read_real("settings", "intensevis", true)
	global.allowshake = ini_read_real("settings", "allowshake", true)
	global.volume = ini_read_real("settings", "volume", 60)
	audio_master_gain((global.volume + 60) / 120)
	obj_volumecontrol.volume = global.volume
	var fullscreen = ini_read_real("settings", "fullscreen", true)
	window_set_fullscreen(fullscreen)
	
	if global.intensevis 
		global.flashcolor = c_white
	else
		global.flashcolor = c_black
}

if !ini_section_exists("game") {
	global.highscore = 0
	global.progress = 0
	ini_write_real("game", "progress", 0)
	ini_write_string("game", "version", global.version) // used for if I change the save file structure (implying i will ever touch this project again)
	ini_close()
	instance_destroy(all)
	room_goto(firstlaunchintro)
	exit
	
}
else {
	global.progress = ini_read_real("game", "progress", 0)	
	global.highscore = ini_read_real("game", "highscore", 0)	
}
ini_close()
