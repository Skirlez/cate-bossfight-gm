timer = 0
for (i = 0; i <= 3; i++) {
	up[i] = 0
	vel[i] = 2
	alpha[i] = 0
}

obj_mousebox.image_xscale = 0
obj_mousebox.image_yscale = 0
if os_type != os_android
	laststr = "This game contains flashing colors and screen shake.\nPlease tune the settings in the main menu\nto your liking.\n\nAlso, you can press the middle mouse button\nto skip any cutscene."
else
	laststr = "This game contains flashing colors and screen shake.\nPlease tune the settings in the main menu\nto your liking."