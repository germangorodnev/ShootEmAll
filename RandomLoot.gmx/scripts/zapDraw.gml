///zapDraw(draws zap from points list)
for (var i = 1, ci = ds_list_size(points); i < ci; i++)
{
    var prev = points[| i - 1],
        pcurr = points[| i];
    draw_line_width_colour(prev[0], prev[1], pcurr[0], pcurr[1], ww, col, col);
}

