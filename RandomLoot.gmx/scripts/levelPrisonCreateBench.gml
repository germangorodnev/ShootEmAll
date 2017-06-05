///levelPrisonCreateBench(xleft, yleft)
var xcr = argument[0],
    ycr = argument[1],
    lvl = oLevel.level,
    realy = ycr*th;

tile_add(tlsPrisonDefault, tw*3, th, tw*3, th, xcr*tw, realy, -realy-th);

lvl[# xcr, ycr] |= LEVEL.SOLID;
lvl[# xcr+1, ycr] |= LEVEL.SOLID;
lvl[# xcr+2, ycr] |= LEVEL.SOLID;

mp_grid_add_cell(oLevel.levelPf, xcr, ycr);
mp_grid_add_cell(oLevel.levelPf, xcr+1, ycr);
mp_grid_add_cell(oLevel.levelPf, xcr+2, ycr);

levelTileMark(xcr, ycr, TILES.__SCAMNUM_HOR);
levelTileMark(xcr+1, ycr, TILES.__SCAMNUM_HOR);
levelTileMark(xcr+2, ycr, TILES.__SCAMNUM_HOR);

