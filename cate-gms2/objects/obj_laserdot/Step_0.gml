if instance_exists(obj_jinx7) {
	x = obj_jinx7.x
	y = obj_jinx7.y
}
else 
	instance_destroy(id)	

image_angle = point_direction(x, y, look_x, look_y)