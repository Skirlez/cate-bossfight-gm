image_speed = global.imagespeed
if die == true {
	image_speed = 0
	image_alpha -= 0.015 * global.fm
	image_xscale += 0.004 * global.fm
	image_yscale += 0.004 * global.fm	
	if image_alpha <= 0
		instance_destroy(id)
}
