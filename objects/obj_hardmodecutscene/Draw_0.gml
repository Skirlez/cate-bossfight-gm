if drawself == true
	draw_self()
	
if drawgreybackground == true {
	draw_set_color(#666E6D)	
	draw_rectangle(0 - 20, 0 - 20, 640 + 20, 360 + 20, false)	
}	

if flash > 0 {
	draw_set_alpha(drawalpha)
	draw_set_color(c_white)
	draw_rectangle(0 - 20, 0 - 20, 640 + 20, 360 + 20, false)	
	flash -= global.execute
	draw_set_alpha(1)
}

