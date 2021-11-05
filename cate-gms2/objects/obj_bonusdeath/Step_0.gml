timer += 1

if timer > 300
	whitescreen += 0.01
	
if whitescreen >= 1 {
	obj_manager.quickentrance = true
	obj_manager.whitescreen = 1
	room_goto(bonuscat)
}