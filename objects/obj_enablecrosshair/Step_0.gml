if clicked() {
	image_index += 1
	if global.crosshair == false {
		global.crosshair = true
		obj_mousebox.visible = true
		window_set_cursor(cr_none)
	}
	else {
		global.crosshair = false
		obj_mousebox.visible = false
		window_set_cursor(cr_default)
	}
}