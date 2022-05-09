var mult
if global.hard == false
	mult = 50
else
	mult = 200
y = 180 + dcos(global.timer * mult + 5 * 60) * global.distance
x = 320 + dsin(global.timer * mult + 5 * 60) * global.distance


if clicked() and global.timer <= 15 {
	spintimer = 0
	image_angle = 0
	audio_play_sound(snd_aliencreek, 10, false)
}

if spintimer <= 60
	image_angle += animcurve_channel_evaluate(spincurvechannel, spintimer / 60) * 30 * global.fm

repeat (global.execute) {

	if spintimer <= 60 
		spintimer += 1
	else
		image_angle = 0
}