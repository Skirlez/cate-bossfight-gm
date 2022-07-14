i = instance_create_depth(x, y, depth, obj_keyboardbroken,
{
    dir : 1
})

i = instance_create_depth(x, y, depth, obj_keyboardbroken,
{
    dir : -1,
	image_index : 1
})

if global.hard
	instance_create_depth(x, y, depth, obj_bandagefalloff)
