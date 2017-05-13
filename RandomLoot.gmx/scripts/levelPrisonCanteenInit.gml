//firstly - tables
var xs = x + 3,
    ys = y + 2,
    lvl = oLevel.level;

switch (choose(0, 1))
{
case 0: // horizontal tables
    for (var hcnt = 0; hcnt < 4; hcnt++)
    {
        for (var ypos = ys, ymax = ys + 5; ypos < ymax; ypos += 2)
        {
            for (var i = xs, ci = xs + 3; i < ci; i++)
            {
                lvl[# i, ypos] |= LEVEL.SOLID;
                tile_add(tlsPrison, tw*2, 0, tw, th, i*tw, ypos*th-irandom_range(9, 17), -ypos*th+14);
                var ypp = (ypos+1)*th-irandom_range(15, 20);
                tile_add(tlsPrison, tw*2, 0, tw, th, i*tw, ypp, -ypp-th/1.5);
            }
            tile_add(tlsPrison, 0, th, tw*3, th, xs*tw, ypos*th, -ypos*th-th);
        }
        xs += 4;
    }
    break;
    
}
