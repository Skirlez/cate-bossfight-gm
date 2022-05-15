timer = -60
image_xscale = 0.1
image_yscale = 0.1
go = false
spintimer = 0
spintarget = -0.1
hp = 3
decideattack = irandom_range(0, 5)
prevattack = decideattack
if global.hard
	repeatattack = 0
else
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
summon = noone
nobgspin = false
timeroffset = 1
whitetimer = 0

