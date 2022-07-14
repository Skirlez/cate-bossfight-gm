if os_browser != browser_not_a_browser {
	instance_destroy(id)
	obj_shakescreentoggle.x = 224
	obj_visualstoggle.x = 288
	obj_volumetest.x = 352
	obj_scoretoggle.x = 416
}

if os_type == os_android {
	instance_destroy(obj_scoretoggle)
	instance_destroy(id)
	obj_shakescreentoggle.x = 384
}