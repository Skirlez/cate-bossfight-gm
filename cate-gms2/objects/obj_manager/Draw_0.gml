draw_set_color(c_white)
draw_set_font(font_fixedsys)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)


if room == mainroom {
	
	if phase == 0 {
		if global.timer > 15.28 {
			screenalpha += 0.005
			draw_set_alpha(screenalpha)
	
			draw_rectangle(0, 0, 640, 360, false)
			draw_set_alpha(1)
		}
	}

	else {
		draw_sprite(spr_varframe, 0, 320, 300)
		draw_text(320, 300, global.hp)
	}

	if currentjinx != 0 {
		object = asset_get_index("obj_jinx" + string(currentjinx))
		if instance_exists(object) and global.attackcooldown > 0 {
			draw_sprite(spr_varframe, 0, 320, 50)
			draw_text(320, 50, object.hp)
		}

	}


}