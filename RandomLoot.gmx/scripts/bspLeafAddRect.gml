///bspLeafAddRect(x, y, w, h)
with (oLevel)
{
    var xx = argument[0],    
        yy = argument[1],    
        _w = argument[2],
        _h = argument[3];
    for (var i = xx, ci = xx + _w; i < ci; i++)
    {
        for (var j = yy, cj = yy + _h; j < cj; j++)
            level[# median(0, i, ww - 1), median(0, j, hh - 1)] = LEVEL.FLOOR;
    }
}
