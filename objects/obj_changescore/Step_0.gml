golefttimer -= global.execute
if golefttimer <= 0 {
	x -= 5 * global.fm
	if golefttimer <= -60
		instance_destroy(id)
}
