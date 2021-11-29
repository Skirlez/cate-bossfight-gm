if clicked() {
	image_index += 1
	if crosshair == false {
		crosshair = true
		obj_mousebox.visible = true
		window_set_cursor(cr_none)
	}
	else {
		crosshair = false
		obj_mousebox.visible = false
		window_set_cursor(cr_default)
	}
}