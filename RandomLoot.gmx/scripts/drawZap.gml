///drawZap(x1, y1, x2, y2, ww, col, col)
var x1 = argument[0],
    y1 = argument[1],
    x2 = argument[2],
    y2 = argument[3],
    ww = argument[4],
    col1 = argument[5],
    col2 = argument[6],
    zapcnt = argument[7],
    ////////
    xs = x1,
    ys = y1,
    xe = xs,
    ye = ys;

for (var i = 0; i < zapcnt; i++)
{
    draw_line_width_colour(xs, ys, xe, ye, ww, col1, col2);
}
