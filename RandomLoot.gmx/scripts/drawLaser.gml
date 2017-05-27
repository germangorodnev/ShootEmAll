///drawLaser(x1, y1, x2, y1, ww, col, col, alpha)
var x1 = argument[0], 
    y1 = argument[1],
    x2 = argument[2],
    y2 = argument[3],
    col1 = argument[5],
    col2 = argument[6],
    alp = argument[7];
draw_set_alpha(alp / 5);
draw_line_width_colour(x1, y1, x2, y2, ww, col1, col2)
draw_set_alpha(alp); 
draw_line_width_colour(x1, y1, x2, y2, 2, col1, col2);
draw_set_alpha(1);

