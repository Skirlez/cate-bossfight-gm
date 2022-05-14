draw_set_color(c_white)
draw_set_font(font_fixedsys)
draw_text(320, 30, "Cate Bossfight")
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
if keyboard_check_pressed(vk_f11) or keyboard_check_pressed(ord("F")) {
	display_reset(0, false)	
	window_set_fullscreen(true)
}

draw_text(30, 345, global.version)


if global.highscore != 0 {
	draw_set_color(obj_mousebox.image_blend)
	var drawscore = string_format(global.highscore, 6, 0)
	drawscore = string_replace_all(drawscore, " ", "0")	
	draw_text(567, 15, "Highscore: " + drawscore)
}
