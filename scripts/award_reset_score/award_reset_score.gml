function award_reset_score(goodtime = 1800, goodhits = 3) {
	if global.scoretoggle {
		var hitsmultiplier, timemultiplier;
		var hits = global.hplost
		if hits > goodhits
			hitsmultiplier = 20 / (hits + (20 - (goodhits + 1))) // this might be stupid
		else 
			hitsmultiplier = 1.1
	
		var time = obj_manager.cattime
		if time < goodtime 
			timemultiplier = goodtime / time
		else
			timemultiplier = goodtime / (time * 1.25)
		
		
		show_debug_message(obj_manager.cattime)
		change_score(10000, timemultiplier * hitsmultiplier)
		obj_manager.cattime = 0
		global.hplost = 0
	}
}