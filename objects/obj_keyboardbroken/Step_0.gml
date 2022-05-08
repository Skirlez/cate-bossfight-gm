repeat(global.execute) {
	vspeed += 0.2 * global.fm
	image_angle -= 7 * dir
}

hspeed = 2 * global.fm * dir 

if y > room_height
	instance_destroy(id)
	

