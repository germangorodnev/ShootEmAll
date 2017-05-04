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
            level[# i, j] = LEVEL.FLOOR;
    }
}
