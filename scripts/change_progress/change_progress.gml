// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_progress(progress = 1) {
	if global.progress < progress
		global.progress = progress
	
	ini_open("cate.jinx") // haphormat sheli
	ini_write_real("game", "progress", global.progress)
	ini_close()
}