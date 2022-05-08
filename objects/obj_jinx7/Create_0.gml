timer = -60
image_xscale = 0.1
image_yscale = 0.1
go = false
spintimer = 0
spintarget = -0.1
hp = 35
decideattack = irandom_range(0, 5)
prevattack = 4
repeatattack = 3
jinxlaser = 0
beginsixpart = 1
warnboxheight = 0
laserangle = 0

function fairirandom(a, b) {
	
	i = irandom_range(a, b)	
	while i == prevattack
		i = irandom_range(a, b)	
		
	prevattack = i
	return i
	
}
