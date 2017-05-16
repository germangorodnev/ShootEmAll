//firstly - tables
var xs = x,
    ys = y + 2,
    lvl = oLevel.level,
    collvl = oLevel.colLevel;

switch (choose(0, 0))
{
case 0: // horizontal tables
    var xstartoff = 3,
        xbetw = 4;
    if (par.size == 0)
        xstartoff = 1;
    for (var hcnt = 0; hcnt < 4; hcnt++)
    {
        for (var ypos = ys, ymax = ys + 5; ypos < ymax; ypos += 2)
        {
            for (var i = xs + xstartoff, ci = xs ; i < ci; i++)
            {
                lvl[# i, ypos] |= LEVEL.SOLID;
                //levelTileMark(i, ypos, TILES.__TABLE_HOR);
                tile_add(tlsPrison, tw*2, 0, tw, th, i*tw, ypos*th-irandom_range(9, 17), -ypos*th+14);
                var ypp = (ypos+1)*th-irandom_range(15, 20);
                tile_add(tlsPrison, tw*2, 0, tw, th, i*tw, ypp, -ypp-th/1.5);
            }
            tile_add(tlsPrison, 0, th, tw*3, th, xs*tw, ypos*th, -ypos*th-th);
            levelTileMark(xs, ypos, TILES.__TABLE_LEFT);
            levelTileMark(xs+1, ypos, TILES.__TABLE_HOR_CENT);
            levelTileMark(xs+2, ypos, TILES.__TABLE_RIGHT);
        }
        xs += 4;
    }
    break;
    
case 1:
    
    break;
    
}
