
if timer == 0
	jump = 20
	
if timer > 0 and timer < 16 {
	if 5 > round(3 + (hp / 3))
		x = 320 + dsin((global.timer * 200) + (5 * 60)) * 160
	else
		x = 320 + dsin((global.timer * 150) + (5 * 60)) * 110	
		
	jump -= 2.5
	y -= jump
}
	

timer += 1

if timer == 19
	timer = 0