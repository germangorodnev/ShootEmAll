///levelPrisonCanteenCreateTableHor(xleft, yleft)
var xcr = argument[0],
    ycr = argument[1],
    lvl = oLevel.level,
    realy = ycr*th;
for (var i = xcr, ci = xcr + 3; i < ci; i++)
{
    // stools
    lvl[# i, ycr] |= LEVEL.SOLID;
    var realx = i*tw;
    tile_add(tlsPrison, tw*2, 0, tw, th, realx, ycr*th-irandom_range(9, 17), -ycr*th+14);
    var ypp = (ycr+1)*th-irandom_range(15, 20);
    tile_add(tlsPrison, tw*2, 0, tw, th, realx, ypp, -ypp-th/1.5);
}
tile_add(tlsPrison, 0, th, tw*3, th, xcr*tw, realy, -realy-th);

mp_grid_add_cell(oLevel.levelPf, xcr, ycr);
mp_grid_add_cell(oLevel.levelPf, xcr+1, ycr);
mp_grid_add_cell(oLevel.levelPf, xcr+2, ycr);

levelTileMark(xcr, ycr, TILES.__TABLE_LEFT);
levelTileMark(xcr+1, ycr, TILES.__TABLE_HOR_CENT);
levelTileMark(xcr+2, ycr, TILES.__TABLE_RIGHT);
// some papers on the table
if (irandom(50) < 40)
{
    var shx = choose(0, 1, 2, 3),
        shy = 0,
        rlx = xcr*tw;
    if (shx == 0 || shx == 2)
    {
        shy = choose(0, 1);
    }
    shx *= tw;
    shy *= th;
    tile_add(tlsPrisonShit, shx, shy, tw, th, 
        rlx + irandom_range(5, tw*1.5), 
        realy, -realy-th-1);
}

