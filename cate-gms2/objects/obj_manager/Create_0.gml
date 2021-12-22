randomize();
global.screenWidth = display_get_width()
global.screenHeight = display_get_height()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
surface_resize(application_surface, global.screenWidth, global.screenHeight)
window_set_fullscreen(true)

if !variable_global_exists("fps")
	global.fps = 120
	
if !variable_global_exists("crosshair")
	global.crosshair = false
	
global.fm = 0.5 // framerate multiplier
depth = -10002
sprite_set_offset(spr_keyboard, 480, 360)
sprite_set_offset(spr_static, 480, 360)
screenalpha = 0
global.timer = 0
global.attackcooldown = 0
quickentrance = false
whitescreen = 0
scripttimer = 0
paused = false
pausemx = 320
pausemy = 180
canunpause = true
