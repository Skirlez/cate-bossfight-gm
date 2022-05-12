if instance_exists(obj_jinx7) and !global.intensevis {
	draw_sprite_ext(spr_jinx7, image_index, x + 1, y + 1, image_xscale, image_yscale, 0, c_white, image_alpha)
	draw_sprite_ext(spr_jinx7, image_index, x - 1, y - 1, image_xscale, image_yscale, 0, c_white, image_alpha)
}
draw_self()
