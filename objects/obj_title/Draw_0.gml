draw_set_font(font_fixedsys)
draw_text(320, 30, "Cate Bossfight")
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_text(320, 170, "Press Enter to play")
draw_text(320, 190, "Press Shift to play bonus cat")
draw_text(320, 210, "Press ESC to quit the game")

if keyboard_check_pressed(vk_f11) or keyboard_check_pressed(ord("F")) {
	display_reset(0, false)	
	window_set_fullscreen(true)
}