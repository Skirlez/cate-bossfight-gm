if phase == 1 {
	image_alpha += 0.08
	if image_alpha >= 1 {
		image_alpha = 1
		phase = 2
	}
}
else if phase == 2 {
	image_alpha -= 0.066
	if image_alpha <= 0 {
		image_alpha = 0
		phase = 0
	}
}