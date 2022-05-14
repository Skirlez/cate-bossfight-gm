function save_game(){
	ini_open("cate.jinx") // MY FORMAT
	ini_write_real("settings", "scoretoggle", global.scoretoggle)	
	ini_write_real("settings", "intensevis", global.intensevis)	
	ini_write_real("settings", "allowshake", global.allowshake)	
	ini_write_real("settings", "volume", global.volume)	
	var fullscreen = window_get_fullscreen()
	ini_write_real("settings", "fullscreen", fullscreen)
	ini_write_real("game", "highscore", global.highscore)
	ini_close()
}