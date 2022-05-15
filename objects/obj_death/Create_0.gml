timer = 240
global.shake = 0
play_sound(choose(snd_great_shine, snd_glass_breaking, snd_aliencreek, snd_lasergo), false)
if global.score > global.highscore
    global.highscore = global.score
global.score = 0

