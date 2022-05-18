image_index = choose(0, 1)
image_speed = 0
dir = point_direction(x, y, mouse_x, mouse_y)
dir += irandom_range(-90, 90)
image_xscale = 0.03
image_yscale = 0.03
depth = -10001
move_towards_point(x + dcos(dir) * 30, y - dsin(dir) * 30, 3 * global.fm)
harmless = false
nobouncetimer_x = 0
nobouncetimer_y = 0
flip_x = 1
flip_y = 1
bounce = 0
