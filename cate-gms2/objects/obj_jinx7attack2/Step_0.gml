if image_alpha > 0.15 {
	repeat(global.execute)
		instance_create_depth(x, y, -10001, obj_triangle)
}


image_xscale += 0.02 * global.fm
image_yscale += 0.02 * global.fm
image_angle += 15 * global.fm
image_alpha -= 0.01 * global.fm

if image_alpha <= 0
	instance_destroy(id)