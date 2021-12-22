
if image_yscale == 1 {
	if clicked() and global.fps != 360 {
		obj_executetime.frames = 0
		if global.fps == 30
			global.fps += 30
		else
			global.fps += 60
	}
}
else {
	if clicked() and global.fps != 30 {
		obj_executetime.frames = 0
		if global.fps == 60
			global.fps -= 30
		else
			global.fps -= 60
	}
}