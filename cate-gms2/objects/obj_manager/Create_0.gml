global.screenWidth = display_get_width()
global.screenHeight = display_get_height()
surface_resize(application_surface, global.screenWidth, global.screenHeight)

window_set_fullscreen(true)

global.timer = 0
global.hp = 20

hptrack = 0