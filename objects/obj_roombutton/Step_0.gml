if clicked() {
	room_goto(the_room)
	global.hard = hard
	if quickentrance {
		obj_manager.quickentrance = true
		obj_manager.whitescreen = 1
	}
}
