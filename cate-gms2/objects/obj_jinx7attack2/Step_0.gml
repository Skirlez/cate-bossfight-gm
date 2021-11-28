if image_alpha > 0.25
	instance_create_depth(x, y, -10001, obj_triangle)


image_xscale += 0.02
image_yscale += 0.02
image_angle += 15
image_alpha -= 0.01

if image_alpha <= 0
	instance_destroy(id)