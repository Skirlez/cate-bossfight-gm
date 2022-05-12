if on_mouse() {
	if global.scoretoggle == true
		var status = "Enabled"
	else
		var status = "Disabled"
	draw_text(x, y - 32, "Toggle the scoring system.\n(" + status + ")")	
}
draw_self()
