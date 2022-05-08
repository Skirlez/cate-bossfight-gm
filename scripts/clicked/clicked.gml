// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clicked() {
	if place_meeting(x, y, obj_mousebox) and mouse_check_button_pressed(mb_left)
		return true;
	else
		return false;
}