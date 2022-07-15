if image_alpha > 0.05 and flip == 1 {
	repeat(global.execute) {
		repeat ((global.hard + 1)) {
			var i = instance_create_depth(x, y, -10001, obj_triangle)
			i.special = true
			i.creator = id	
		}
	}
}



image_xscale += 0.02 * global.fm * flip
image_yscale += 0.02 * global.fm * flip
image_angle += 15 * global.fm * flip
image_alpha -= 0.01 * global.fm * flip

if global.hard {
	if timer != -1
		timer += global.execute
	else {
		if image_xscale < 0 
			instance_destroy(id)
		
		repeat (global.execute) {
			if flip != -1
				flip -= 0.05
		}	
	}
	if timer >= 100 {
		shakeScreen(135, 0.1, -0.05)
		play_sound(snd_explosion_reversed, false)
		timer = -1
	}
}
else if image_alpha <= 0
	instance_destroy(id)
