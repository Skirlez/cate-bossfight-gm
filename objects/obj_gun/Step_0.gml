image_angle = point_direction(x, y, mouse_x, mouse_y) + recoil
var mousedist = distance_to_point(mouse_x, mouse_y)
if mousedist < 90 
	distoffset = 80 - (mousedist - 10)

x = obj_jinx3.x + (dist - distoffset) * dcos(image_angle) - 1
y = obj_jinx3.y - (dist - distoffset) * dsin(image_angle) - 1
repeat (global.execute) {
	if dist < 50
		dist += 0.5
		
	shoottimer += 1
	
	if shoottimer > 60 { 
		anothertimer += 1
		if anothertimer == shootbetween {
			shootbetween -= 1
			anothertimer = 0
			if shootbetween == 0 {
				shootbetween = 25
				shoottimer = 0
			}
			
			var i = instance_create_depth(x + dcos(image_angle + 23) * 18, y - dsin(image_angle + 23) * 18, depth + 1, obj_jinx6attack)
			i.calcdir = true
			i.dir = -image_angle
			i.go = true
			if shootbetween == 24 {
				i.bomb = true
				var m = -30
				repeat (2) {
					i = instance_create_depth(x + dcos(image_angle + 23) * 18, y - dsin(image_angle + 23) * 18, depth + 1, obj_jinx6attack)	
					i.calcdir = true
					i.dir = -image_angle + m
					i.go = true
					i.bomb = true
					m += 60
				}
				play_sound(snd_vinethud, false)	
			}
			else
				play_sound(snd_big_boing, false)
			recoil = 20	
		}
	}
	if recoil > 0
		recoil -= 5
}
