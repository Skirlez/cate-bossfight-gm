draw_self()
if global.hard and timer < 100 and timer >= 20 
	draw_sprite_ext(spr_keyboardarrows, 0, x + dcos(-image_angle + arrowangle * rotdir) * 75 - 1, y + dsin(-image_angle + arrowangle * rotdir) * 75 - 1, 1, 1 * rotdir, image_angle, image_blend, 1)


