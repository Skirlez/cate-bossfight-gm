image_index = choose(0, 1)
image_speed = 0
dir = irandom_range(0, 359)
depth = -10001
move_towards_point(x + dcos(dir) * 30, y - dsin(dir) * 30, 6)
