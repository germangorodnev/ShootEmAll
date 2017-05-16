///levelPrisonCanteenCreateTableVert(xtop, ytop)
var xcr = argument[0],
    ycr = argument[1],
    lvl = oLevel.level;
for (var i = ycr, ci = ycr + 3; i < ci; i++)
{
    // stools
    lvl[# xcr, i] |= LEVEL.SOLID;
    var deppp = -i*th+14,
        realx = xcr*tw,
        realy = i*th;
    tile_add(tlsPrison, tw*2, 0, tw, th, realx-irandom_range(8, 14), realy, deppp);
    var xpp = realx+irandom_range(15, 20);
    tile_add(tlsPrison, tw*2, 0, tw, th, xpp, realy, deppp);
}
tile_add(tlsPrison, tw*3, th, tw, th*3, realx, ycr*th, -(ycr+2)*th);
levelTileMark(xcr, ycr, TILES.__TABLE_VERT);
levelTileMark(xcr, ycr+1, TILES.__TABLE_VERT);
levelTileMark(xcr, ycr+2, TILES.__TABLE_VERT);

