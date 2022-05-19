if global.intensevis {
	if !surface_exists(rainbowsurface) {
		rainbowsurface = surface_create(1920, 360)
		surface_set_target(rainbowsurface)

		draw_sprite_ext(spr_rainbow, 0, 0, 0, 10, 10, 0, c_white, 1)
		draw_sprite_ext(spr_rainbow, 0, 640, 0, 10, 10, 0, c_white, 1)
		draw_sprite_ext(spr_rainbow, 0, 1280, 0, 10, 10, 0, c_white, 1)
		surface_reset_target()
	}

	
	shader_set(shd_wave)
	var shader_params = shader_get_uniform(shd_wave, "u_vTime");
	shader_set_uniform_f(shader_params, global.timer + timeroffset);
	draw_surface(rainbowsurface, -640, 0)
	shader_reset()
}
else {
	repeat(global.execute) {
		var i = 0
		refresh -= 1
		if refresh <= 0 {
			color = irandom_range(0, 255)
			points_x[0] = irandom_range(x - 100, x + 100)
			points_y[0] = 0
			while (points_y[i] < room_height) {
				var angle = irandom_range(0, 180)
				
				var len = irandom_range(60, 80)
				var vert = len * dsin(angle) - 1
				var hor = len * dcos(angle) - 1
				i++
				points_x[i] = points_x[i - 1] + hor
				points_y[i] = points_y[i - 1] + vert
			}
			steps = i
			refresh = 8
		}
	}
	draw_set_color(make_color_hsv(color, 255, 255))
	for (i = 0; i <= steps - 1; i++) {
		draw_line_width(points_x[i] + drawoffset, points_y[i], points_x[i + 1] + drawoffset, points_y[i + 1], 2)
	}
}


drawoffset = sin(global.timer / 2) * 200
