// set the floor
var lvl = oLevel.level,
    collvl = oLevel.colLevel,
    ww = oLevel.ww,
    hh = oLevel.hh;
for (var i = x, ci = x + rw; i < ci; i++)
{
    for (var j = y, cj = y + rh; j < cj; j++)
    {
        var xx = i * tw,
            yy = j * th;
        // fill with the floor
        lvl[# i, j] |= LEVEL.FLOOR;
        var tl = tile_layer_find(oLevel.floorD, xx, yy);
        if (tl != -1)
            tile_delete(tl);
        tile_add(tlsFloor, tw, 0, tw, th, xx, yy, oLevel.floorD);
    }
}
// some carpets
levelPrisonCarpetSet(x, y, rw, rh, 2);

