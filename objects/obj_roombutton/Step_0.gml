if clicked() {
	global.shake = 0
	global.hard = hard
	if quickentrance {
		obj_manager.quickentrance = true
		obj_manager.whitescreen = 1
	}
	room_goto(the_room)

}
