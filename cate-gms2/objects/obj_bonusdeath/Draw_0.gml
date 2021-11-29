draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_color(c_white)
if timer < 180
	draw_self()
else
	draw_text(320, 180, "But it was funny.")
	
	
draw_set_alpha(whitescreen)
draw_rectangle(0, 0, 640, 360, false)
draw_set_alpha(1)