repeat(global.execute) {
	vspeed += 0.2 * global.fm
	image_angle += 1 * dir
}

hspeed = 1 * global.fm * dir

if y > room_height + 200
	instance_destroy(id)
	

