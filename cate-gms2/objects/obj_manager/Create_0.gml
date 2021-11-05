global.screenWidth = display_get_width()
global.screenHeight = display_get_height()

surface_resize(application_surface, global.screenWidth, global.screenHeight)
window_set_fullscreen(true)


depth = -10002
screenalpha = 0
global.timer = 0
global.attackcooldown = 0

scripttimer = 0