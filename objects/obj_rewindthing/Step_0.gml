if image_alpha < 1 {
	image_alpha += 0.02 * global.fm
	y -= (1 - image_alpha) * global.fm * 2
}
if move == true {
	incr += 0.075 * global.fm 
	x -= global.fm * incr
	while x < -36
		x += room_width + 36
}
