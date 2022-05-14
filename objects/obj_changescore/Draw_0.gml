if sign(mult) == -1
	var stringsign = "-"
else
	var stringsign = "+"
var drawscore = stringsign + string(round(abs(num * mult)))
draw_set_font(font_fixedsys)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(obj_mousebox.image_blend)
draw_text(x, y, drawscore)
