if on_mouse() {
	draw_set_color(c_white)
	if global.allowshake == true
		var status = "Enabled"
	else
		var status = "Disabled"
	draw_text(x, y - 32, "Toggle screen shake.\n(" + status + ")")	
}
draw_self()
