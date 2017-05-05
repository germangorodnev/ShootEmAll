var xx = argument[0],
    yy = argument[1],
    _w = argument[2],
    _h = argument[3];
var tileX = irandom(2) * tw,
    tileY = 0;
for (var i = xx, ci = xx + _w; i < ci; i++)
{
    for (var j = yy, cj = yy + _h; j < cj; j++)
        tile_add(tlsFloor, tileX, tileY, tw, th, i * tw, j * th, oLevel.floorD);
}


