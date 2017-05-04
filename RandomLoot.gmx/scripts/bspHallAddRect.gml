///bspHallAddRect(x, y, w, h)
with (oLevel)
{
    //var n = instance_create(argument[0] * tw, argument[1] * th, oFloor);
    //n.w = argument[2] * tw;
    //n.h = argument[3] * th;
    
    var xx = argument[0],    
        yy = argument[1],    
        _w = argument[2],
        _h = argument[3];
    if (_w != 1)
        _w++;
    if (_h != 1)
        _h++;
    for (var i = xx, ci = xx + _w; i < ci; i++)
    {
        for (var j = yy, cj = yy + _h; j < cj; j++)
            level[# i, j] = LEVEL.FLOOR;
    }
}
