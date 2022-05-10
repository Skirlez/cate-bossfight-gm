x = mouse_x
y = mouse_y

if global.shake > 0 {
	x -= camera_get_view_x(view_camera[0])
	y -= camera_get_view_y(view_camera[0])
}
