if starttimer > 0 {
	starttimer -= 1
	image_alpha += 1 / 60
}	

else {
	px = px + ((270 * switchguitar - px) / 4)
	py = dcos(global.timer * (555 / hp)) * 110
	
}


x = px + 320
y = py + 160