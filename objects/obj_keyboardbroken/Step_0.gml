repeat(global.execute) {
	vsp += 0.3
	image_angle += 3 * dir
}

x += hsp * global.fm
y += vsp * global.fm

if y > room_height + 200 
	instance_destroy(id)

	

