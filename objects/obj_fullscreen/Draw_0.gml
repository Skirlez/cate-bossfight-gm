if on_mouse() {
	draw_set_color(c_white)
	if window_get_fullscreen()
		var status = "Enabled"
	else
		var status = "Disabled"
	draw_text(x, y - 32, "Toggle fullscreen.\n(" + status + ")")	
}
draw_self()
