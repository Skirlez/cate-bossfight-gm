if drawself == true
	draw_sprite_ext(sprite_index, image_index, x, y, 0.1, image_yscale, 0, image_blend, 1)
	
if drawgreybackground == true {
	draw_set_color(#666E6D)	
	draw_rectangle(0 - 100, 0 - 20, 640 + 100, 360 + 100, false)	
}	

if flash > 0 {
	draw_set_alpha(drawalpha)
	draw_set_color(flashcolor)
	draw_rectangle(0 - 100, 0 - 20, 640 + 100, 360 + 100, false)	
	flash -= global.execute
	draw_set_alpha(1)
}


