draw_self();
draw_set_color(c_white)
if on_mouse() and image_index == 0
	draw_text(x, y - 32, "Check the game volume.\n(plays loud music)")	

else if image_index == 1
	draw_text(x, y - 32, "This shouldn't be\near piercing.")
	
