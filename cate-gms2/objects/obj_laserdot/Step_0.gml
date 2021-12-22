if instance_exists(obj_jinx7) {
	x = obj_jinx7.x
	y = obj_jinx7.y
}
else 
	instance_destroy(id)	


if update == true 
	image_angle = point_direction(x, y, mouse_x, mouse_y)	

if image_alpha < 1
	image_alpha += 0.005 * global.fm