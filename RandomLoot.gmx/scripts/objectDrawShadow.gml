///objectDrawShadow(x, y)
var xx = argument[0],
    yy = argument[1];
draw_set_alpha(1);
draw_ellipse_colour(xx - shrx, yy - shry, xx + shrx, yy + shry, c_black, c_black, 0);


