x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])
if phase == 1 {
	image_alpha += 0.08 * global.fm
	if image_alpha >= 1 {
		image_alpha = 1
		phase = 2
	}
}
else if phase == 2 {
	image_alpha -= 0.066 * global.fm
	if image_alpha <= 0 {
		image_alpha = 0
		phase = 0
	}
}