timer = 0
whitescreen = 0
global.shake = 0
play_sound(choose(snd_great_shine, snd_glass_breaking, snd_aliencreek, snd_lasergo), false)
if global.score > global.highscore
    global.highscore = global.score
save_game()
global.score = 0

