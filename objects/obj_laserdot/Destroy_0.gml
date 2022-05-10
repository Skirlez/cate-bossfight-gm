if becomelaser == true {
	play_sound(snd_lasergo, false)
	var i = instance_create_depth(obj_laserdot.x, obj_laserdot.y, -10000, obj_shootlaser)	
	i.image_angle = image_angle
	i.image_xscale = 2
	i.image_yscale = 2
}
