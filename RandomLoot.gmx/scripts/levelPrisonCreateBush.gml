///levelPrisonCreateBush(xleft, yleft)
var xcr = argument[0],
    ycr = argument[1],
    lvl = oLevel.level,
    realy = ycr*th;

var tly = choose(2, 3),
    tlx;
tlx = irandom_range(3, (5 * (tly == 2)) + (4 * (tly == 3)));
tile_add(tlsPrisonDefault, tlx * tw, tly * th, tw, th, xcr*tw, realy, -realy-th);

lvl[# xcr, ycr] |= LEVEL.SOLID;

mp_grid_add_cell(oLevel.levelPf, xcr, ycr);

levelTileMark(xcr, ycr, TILES.__PLANT);

