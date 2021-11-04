y = 160 + dcos(global.timer * 50 + 5 * 60) * global.distance
x = 320 + dsin(global.timer * 50 + 5 * 60) * global.distance


if clicked() {
	spintimer = 60
	audio_play_sound(snd_aliencreek, 10, false)
}

if spintimer > 0 {
	image_angle += animcurve_channel_evaluate(spincurvechannel, spintimer / 60) * 30
	spintimer -= 1
}
else
	image_angle = 0