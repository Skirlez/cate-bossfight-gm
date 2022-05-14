function damage_player(hp) {
	global.hp -= hp
	if global.scoretoggle
		global.hplost += 1
}