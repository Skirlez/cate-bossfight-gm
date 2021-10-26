draw_set_font(font_fixedsys)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(320, 300, global.hp)

if hptrack != 0 
	draw_text(320, 50, asset_get_index("obj_jinx" + string(hptrack)).hp)

