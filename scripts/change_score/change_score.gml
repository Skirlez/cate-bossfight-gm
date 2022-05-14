function change_score(change, mult) {
	var i = instance_create_depth(320, 15, -10001, obj_changescore)
	i.num = change
	i.mult = mult
}