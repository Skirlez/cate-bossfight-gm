draw_self()
draw_sprite(spr_volumecontrolknob, 0, x + (volume / 2), y)
draw_text(x, y + 9, round((volume + 60) / 120 * 100))
