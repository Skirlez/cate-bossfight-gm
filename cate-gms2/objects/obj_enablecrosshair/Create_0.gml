image_speed = 0

if global.crosshair == false {
	obj_mousebox.visible = false
	window_set_cursor(cr_default)
}

else {
	image_index = 1
	global.crosshair = true
	obj_mousebox.visible = true
	window_set_cursor(cr_none)
}