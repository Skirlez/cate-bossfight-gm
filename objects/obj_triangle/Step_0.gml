move_towards_point(x + dcos(dir) * 30, y - dsin(dir) * 30, spd * global.fm)
hspeed *= flip
vspeed *= flip
image_angle += 20 * global.fm

if image_xscale < 1 or flipsize == -1 {
	image_xscale += 0.1 * global.fm * flipsize
	image_yscale += 0.1	* global.fm * flipsize
	
	if image_xscale < 0 and flipsize == -1
		instance_destroy(id)
}

else {
	image_xscale = 1
	image_yscale = 1
	if instance_exists(creator) {
		flip = creator.flip
		
		if flip == -1 and point_distance(x, y, creator.x, creator.y) < 70
			flipsize = -1
			
	
	}
}

