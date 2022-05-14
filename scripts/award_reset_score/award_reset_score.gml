function award_reset_score(goodtime = 1800, goodhits = 3) {
	if global.scoretoggle {
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
		
		change_score(10000, timemultiplier * hitsmultiplier)
		obj_manager.cattime = 0
		global.hplost = 0
	}
}