// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_sound(snoud, loop, priority = 1) {
	return audio_play_sound_on(global.soundemitter, snoud, loop, priority)
}