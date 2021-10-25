x =	320 + dsin(global.timer * 200) * 180 
y = 160 + dcos(global.timer * 180) * 110 + (dsin(global.timer * 2000) * bounce)


if clicked() {
	audio_play_sound(snd_big_boing, 10, false)
	audio_play_sound(snd_attack_hit, 10, false)
	audio_play_sound(snd_bigcut, 10, false)
	bounce = 40
}

if bounce != 0
	bounce -= 1
	
	
if actiontime == 1 {
	if attacking == 0 and irandom_range(0, 4) == 3 {
		attacking = 45
		audio_play_sound(snd_alert, 10, false)
		sprite_index = spr_jinx1attack	
	
	}


}

if attacking == 7 {
	instance_create_depth(x, y, -10000, obj_jinx1attack)	
	audio_play_sound(snd_low_boing, 10, false)
	sprite_index = spr_jinx1
}

if attacking > 0 {
	attacking -= 1
}

	
if actiontime > 0
	actiontime -= 1
else
	actiontime = 7