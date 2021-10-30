global.screenWidth = display_get_width()
global.screenHeight = display_get_height()
surface_resize(application_surface, global.screenWidth, global.screenHeight)

window_set_fullscreen(true)

global.timer = 0
global.hp = 20
global.distance = 250
screenalpha = 0
depth = -10002

audio_play_sound(snd_music_phase1, 10, false)
phase = 0

backgroundlayer = layer_get_id("Background")
background = layer_background_get_id(backgroundlayer)

whitecolor = 255
currentjinx = 0