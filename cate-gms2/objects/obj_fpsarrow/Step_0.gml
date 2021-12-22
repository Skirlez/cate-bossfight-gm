
if image_yscale == 1 {
	if clicked() {
		
		audio_play_sound(snd_big_boing, 10, false)
		bounce = 40	
		
		if global.fps != 360 {
			obj_executetime.frames = 0
			switch global.fps {
				case 30:
					global.fps += 30
					break;
				case 60:
					global.fps += 60
					break;
				case 120:
					global.fps += 24
					break;
				case 144:
					global.fps += 26
					break;
				case 170:
					global.fps += 10
					break;
				case 180:
					global.fps += 60
					break;
				case 240:
					global.fps += 48
					break;
				case 288:
					global.fps += 12
					break;
				case 300:
					global.fps += 60
					break;
			}
		}
	}
	
	
	repeat(global.execute)
		if bounce > 0 
			bounce -= 1
	
}
else {
	if clicked() {
		
		bounce = 1
		audio_play_sound(snd_big_boing_reversed, 10, false)
		
		if global.fps != 30 {
			obj_executetime.frames = 0
			switch global.fps {
				case 60:
					global.fps -= 30
					break;
				case 120:
					global.fps -= 60
					break;
				case 144:
					global.fps -= 24
					break;
				case 170:
					global.fps -= 26
					break;
				case 180:
					global.fps -= 10
					break;
				case 240:
					global.fps -= 60
					break;
				case 288:
					global.fps -= 48
					break;
				case 300:
					global.fps -= 12
					break;
				case 360:
					global.fps -= 60
					break;
			}
		}
	}
	
	
	repeat (global.execute) {
		if bounce < 40 and bounce != 0
			bounce += 1
		
		if bounce == 40
			bounce = 0
	}
}


