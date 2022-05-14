function award_reset_score(goodtime = 1800, goodhits = 3) {
	var hitsmultiplier, timemultiplier;
	var hits = global.hplost
	if hits > goodhits
		hitsmultiplier = 10 / (hits + (10 - (goodhits + 1)))
	else 
		hitsmultiplier = 1.1
	
	var time = obj_manager.cattime
	if time < goodtime 
		timemultiplier = goodtime / time
	else
		timemultiplier = goodtime / (time * 1.25)
		
	show_debug_message(obj_manager.currentjinx)
	show_debug_message(time)
	show_debug_message("\n")
	change_score(10000, timemultiplier * hitsmultiplier)
	obj_manager.cattime = 0
	global.hplost = 0
}