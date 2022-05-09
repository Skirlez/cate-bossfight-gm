if instance_exists(obj_jinx7)  {
	if update == true {
		x = obj_jinx7.x
		y = obj_jinx7.y
		image_angle = point_direction(x, y, mouse_x, mouse_y)
	}
}
else if update == true
	instance_destroy(id)	



if image_alpha < 1
	image_alpha += 0.005 * global.fm