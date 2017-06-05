var lvl = oLevel.level;
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
        tile_add(tlsPrisonFloor128, tw * irandom(1), th * irandom(1), tw, th, xx, yy, oLevel.floorD);
        //tile_add(tlsPrison, tw * 4, th * 1, tw, th, xx, yy, oLevel.floorD);
    }
}
