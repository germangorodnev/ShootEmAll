///bspHallAddRect(x, y, w, h)
with (oLevel)
{
    var n = instance_create(argument[0], argument[1], oFloor);
    n.rw = argument[2];
    n.rh = argument[3];
    
    var xx = argument[0],    
        yy = argument[1],    
        _w = argument[2],
        _h = argument[3];
    /*if (_w != 1)
        _w++;
    if (_h != 1)
        _h++;*/
    for (var i = xx, ci = xx + _w; i < ci; i++)
    {
        for (var j = yy, cj = yy + _h; j < cj; j++)
        {
            level[# i, j] |= LEVEL.FLOOR;
            if (tile_layer_find(oLevel.floorD, i * tw, j * th) == -1)
                tile_add(tlsFloor, tw, 0, tw, th, i * tw, j * th, oLevel.floorD);            
        }
    }
}
