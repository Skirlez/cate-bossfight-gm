if window_get_fullscreen()
	image_index = 0
else
	image_index = 1
	
if clicked() {
	window_set_fullscreen(!window_get_fullscreen())
	play_sound(snd_vinethud, false)		
}
