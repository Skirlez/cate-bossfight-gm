x = 320 + dsin(global.timer * 50) * 110
y = 160 + dcos(global.timer * 100) * 110
attacktimer += 1

if clicked() and global.attackcooldown == 0 {
	hp -= 1
	audio_play_sound(snd_gloopboing, 10, false)
	audio_play_sound(snd_attack_hit, 10, false)
	audio_play_sound(snd_bigcut, 10, false)
	global.attackcooldown = 91

}

if hp <= 0
	room_goto(ending)

if attacktimer == 180
	audio_play_sound(snd_impact, 10, false)
	
if attacktimer >= 240 and attacktimer < 256 and attacktimer % 2 == 0 {
	i = instance_create_depth(x, y, -10000, obj_jinx6attack)
	i.spin = (attacktimer - 240) / 2
}


if attacktimer == 308 {
	obj_jinx6attack.go = true	
	audio_play_sound(snd_scytheburst, 10, false)
	if repeatattack != 0 {
		attacktimer = 239
		repeatattack -= 1
	}
	else {
		repeatattack = 3
		attacktimer = 0
	}
}