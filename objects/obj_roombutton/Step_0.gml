if clicked() {
	global.shake = 0
	global.hard = hard
	obj_manager.whitescreen = 1
	if quickentrance 
		obj_manager.quickentrance = true
	
	room_goto(the_room)

}
