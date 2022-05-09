move_towards_point(x + dcos(dir) * 30, y - dsin(dir) * 30, 6 * global.fm)
image_angle += 20 * global.fm

if image_xscale < 1 {
	image_xscale += 0.1 * global.fm
	image_yscale += 0.1	* global.fm
}

else {
	image_xscale = 1
	image_yscale = 1
}

