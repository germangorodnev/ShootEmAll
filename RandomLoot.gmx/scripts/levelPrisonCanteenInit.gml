//firstly - tables
var xs = x,
    ys = y+2,
    lvl = oLevel.level,
    collvl = oLevel.colLevel;

switch (choose(0, 1)) // vert\hor tables
{
case 0: // horizontal tables
    // size == 2
    xs = x + 3;
    var cols = 4,
        rows = 3,
        xbetw = 4,
        ybetw = 2,
        yoff = 2;
    if (par.size == 0)
    {
        yoff = 3;
        xs = x + 1;
        cols = 2;
        rows = 3;

    }
    repeat (cols)
    {
        ys = y + yoff;
        repeat (rows)
        {
            levelPrisonCanteenCreateTableHor(xs, ys);
            ys += ybetw;
        }
        xs += xbetw;
    }
    break;
    
case 1:
    // size == 2
    var cols = 9,
        rows = 2,
        xbetw = 2,
        ybetw = 4,
        yoff = 1;
    xs = x + 2;
    if (par.size == 0)
    {
        xs = x + irandom_range(1, 2);
        yoff = 1;
        cols = 4;
        rows = 2;
    }
    repeat (cols)
    {
        ys = y + yoff;
        repeat (rows)
        {
            levelPrisonCanteenCreateTableVert(xs, ys);
            ys += ybetw;
        }
        xs += xbetw;
    } 
    break;
    
}

// now some posters
var dpt = -y*th-1;
repeat(irandom_range(2, 4))
{
    var xp = x+1,
        yp = y-1;
    do
    {
        xp = irandom_range(x+1, x+rw-2);
    } until (tile_layer_find(dpt, xp*tw, yp*tw) == -1
        && lvl[# xp, yp] & LEVEL.WALL);
    var tly = th * irandom(1),
        tlx = 0;
    if (tly == 0)
    {
        tlx = tw*3 + irandom(2)*tw;
    }
    else if (tly == th)
    {
        tlx = tw + irandom(3)*tw;    
    }
    tile_add(tlsCanteen, tlx, tly, tw, th, xp*tw, yp*th, dpt);
}   
