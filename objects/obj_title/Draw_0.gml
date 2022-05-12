draw_set_color(c_white)
draw_set_font(font_fixedsys)
draw_text(320, 30, "Cate Bossfight")
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
if keyboard_check_pressed(vk_f11) or keyboard_check_pressed(ord("F")) {
	display_reset(0, false)	
	window_set_fullscreen(true)
}