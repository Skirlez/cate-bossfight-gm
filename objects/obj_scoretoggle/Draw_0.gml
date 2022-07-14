if on_mouse() {
	draw_set_color(c_white)
	if global.scoretoggle == true
		var status = "Enabled"
	else
		var status = "Disabled"
	draw_text(x, y - 48, "Toggle the scoring system.\nRewards you based on HP lost, time, and accuracy.\n(Accuracy means spam clicking will make you lose score).\n(" + status + ")")	
}
draw_self()
