//save load things

ini_open("cate.jinx") // this is my format. I invented  it
if !ini_section_exists("settings") {
	ini_write_real("settings", "scoretoggle", false) // i hate scoring
	ini_write_real("settings", "intensevis", true) 
	ini_write_real("settings", "allowshake", true) 
	ini_write_real("settings", "volume", 60)
	ini_write_real("settings", "fullscreen", true)
}
else {
	global.scoretoggle = ini_read_real("settings", "scoretoggle", false)
	global.intensevis = ini_read_real("settings", "intensevis", true)
	global.allowshake = ini_read_real("settings", "allowshake", true)
	global.volume = ini_read_real("settings", "volume", 60)
	audio_master_gain((global.volume + 60) / 120)
	obj_volumecontrol.volume = global.volume
	var fullscreen = ini_read_real("settings", "fullscreen", true)
	window_set_fullscreen(fullscreen)
}

if !ini_section_exists("game") {
	ini_write_real("game", "progress", 0)
	ini_write_real("game", "progress", global.highscore)
	ini_write_string("game", "version", global.version) // used for if I change the save file structure (implying i will ever touch this project again)
}
else {
	global.progress = ini_read_real("game", "progress", 0)	
	global.highscore = ini_read_real("game", "highscore", 0)	
}
ini_close()
