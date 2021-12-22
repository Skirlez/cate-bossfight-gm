
if image_yscale == 1 
	draw_text(x - 24, ystart - 8, "FPS\n" + string(global.fps))
	
draw_sprite_ext(sprite_index, image_index, x, ystart + dsin(global.timer * 2000) * bounce, image_xscale, image_yscale, 0, c_white, 1)