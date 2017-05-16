///levelPrisonCanteenCreateTableHor(xleft, yleft)
var xcr = argument[0],
    ycr = argument[1],
    lvl = oLevel.level;
for (var i = xcr, ci = xcr + 3; i < ci; i++)
{
    // stools
    lvl[# i, ycr] |= LEVEL.SOLID;
    var realx = i*tw;
    tile_add(tlsPrison, tw*2, 0, tw, th, realx, ycr*th-irandom_range(9, 17), -ycr*th+14);
    var ypp = (ycr+1)*th-irandom_range(15, 20);
    tile_add(tlsPrison, tw*2, 0, tw, th, realx, ypp, -ypp-th/1.5);
}
tile_add(tlsPrison, 0, th, tw*3, th, xcr*tw, ycr*th, -ycr*th-th);
levelTileMark(xcr, ycr, TILES.__TABLE_LEFT);
levelTileMark(xcr+1, ycr, TILES.__TABLE_HOR_CENT);
levelTileMark(xcr+2, ycr, TILES.__TABLE_RIGHT);

