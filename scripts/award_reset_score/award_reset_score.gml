function award_reset_score(goodtime = 1800, goodhits = 3, goodmiss = 3) {
	if global.scoretoggle {
		var hitsmultiplier, timemultiplier, missmultiplier;
		var hits = global.hplost
		if hits > goodhits
			hitsmultiplier = 20 / (hits + (20 - (goodhits + 1))) // this might be stupid
		else 
			hitsmultiplier = 1
	
		var time = obj_manager.cattime
		if time < goodtime 
			timemultiplier = 1
		else
			timemultiplier = 0.8
		
		var miss = global.misses
		if miss > goodmiss
			missmultiplier = 10 / (miss + (10 - (goodmiss + 1))) // i don't think it's stupid anymore
		else 
			missmultiplier = 1
		
		show_debug_message(obj_manager.cattime)
		change_score(10000, timemultiplier * hitsmultiplier * missmultiplier)
		obj_manager.cattime = 0
		global.hplost = 0
		global.misses = 0
	}
}