timer += 1

if image_alpha > 0  {
	image_xscale += 0.001
	image_yscale += 0.001
	image_alpha -= 0.005
}



if timer == 430 {
	instance_create_depth(x, y, -9999, obj_pluck)	
	instance_destroy(id)
}
