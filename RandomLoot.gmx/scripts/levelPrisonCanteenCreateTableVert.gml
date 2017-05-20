///levelPrisonCanteenCreateTableVert(xtop, ytop)
var xcr = argument[0],
    ycr = argument[1],
    lvl = oLevel.level,
    realx = xcr*tw;
for (var i = ycr, ci = ycr + 3; i < ci; i++)
{
    // stools
    lvl[# xcr, i] |= LEVEL.SOLID;
    var deppp = -(i-2)*th+14,
        realy = i*th;
    tile_add(tlsPrison, tw*2, 0, tw, th, realx-irandom_range(8, 14), realy, deppp);
    var xpp = realx+irandom_range(15, 20);
    tile_add(tlsPrison, tw*2, 0, tw, th, xpp, realy, deppp);
}
tile_add(tlsPrison, tw*3, th, tw, th*3, realx, ycr*th, -((ycr+0)*th));
levelTileMark(xcr, ycr, TILES.__TABLE_VERT);
levelTileMark(xcr, ycr+1, TILES.__TABLE_VERT);
levelTileMark(xcr, ycr+2, TILES.__TABLE_VERT);
// some papers on the table
if (irandom(50) < 5)
{
    var shx = choose(0, 1, 2, 3),
        shy = 0,
        rly = ycr*th;
    if (shx == 0 || shx == 2)
    {
        shy = choose(0, 1);
    }
    shx *= tw;
    shy *= th;
    tile_add(tlsPrisonShit, shx, shy, tw, th, 
        realx, 
        rly + irandom_range(5, th*1.5), -rly-1);
}
