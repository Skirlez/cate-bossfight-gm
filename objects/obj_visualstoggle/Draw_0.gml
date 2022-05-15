if on_mouse() {
	draw_set_color(c_white)
	if global.intensevis == true
		var status = "Enabled"
	else
		var status = "Disabled"
	draw_text(x, y - 32, "Toggle intense visuals.\n(" + status + ")")	
}
draw_self()
