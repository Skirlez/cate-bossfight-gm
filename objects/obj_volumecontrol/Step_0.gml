if clicked()
	adjust = true

if mouse_check_button(mb_left) and adjust == true
	volume = clamp((mouse_x - xstart) * 2, -60, 60)

if mouse_check_button_released(mb_left) and adjust == true {
	audio_master_gain((volume + 60) / 120)
	adjust = false
}
