image_speed = 0
hp = 15
audio_play_sound(snd_audio_appearance, 10, false)
image_xscale = 0.1
image_yscale = 0.1
x = 320
y = 180
depth = -9999
image_alpha = 0
instance_create_depth(x, y, -10000, obj_guitar)

distortlayer = layer_get_id("Distort")
layerfx = layer_get_fx(distortlayer)
fx_set_parameter(layerfx, "g_DistortAngle", 120)
layer_set_fx(distortlayer, layerfx)

starttimer = 65
switchguitar = -1
px = 0
py = 0
deathtimer = 0