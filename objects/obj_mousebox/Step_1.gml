x = mouse_x
y = mouse_y

if global.shake > 0 {
	x -= camera_get_view_x(view_camera[0])
	y -= camera_get_view_y(view_camera[0])
}

if mouse_check_button(mb_left) {
	image_xscale = 0.75
	image_yscale = 0.75	
}
else {
	image_xscale = 1
	image_yscale = 1	
}
