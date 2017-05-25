// set the floor
var lvl = oLevel.level,
    collvl = oLevel.colLevel;
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
        tile_add(tlsCanteen, tw * choose(1,2), 0, tw, th, xx, yy, oLevel.floorD);
        // some bue on floor
        if (irandom(50) < 2)
            tile_add(tlsPrisonShit, 4*tw, th*irandom(1), tw, th, xx, yy, oLevel.carpetD);
    }
}
//firstly - tables
var xs = x,
    ys = y+2;
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
        yoff = 2;
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
            // chance to place a card
            if (irandom(50) <= 25)
            {
                var cardx = xs*tw - tw/2, 
                    cardy = ys*th + th / 2;
                with (instance_create(cardx, cardy, oPickupCard))
                {
                    pickupableInit(PICKUP.__SU_CARDS, choose(SINGLEUSE.__FULL_HEART, SINGLEUSE.__40_SHOTGUN_SHELLS, SINGLEUSE.__INF_AMMO));
                    depth = y;
                }
            }
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

// now some coole automats
repeat (irandom_range(1, 2))
{
    var xp = x+1,
        yp = y-1;
    do
    {
        xp = irandom_range(x+1, x+rw-2);
    } until (lvl[# xp, yp] & LEVEL.WALL);
    var rly = (yp+1)*th;
    tile_add(tlsCanteen, 0, th, tw, th, xp*tw, rly-th/2, -rly-th/2-1);
    lvl[# xp, yp+1] |= LEVEL.WALL;
    levelTileMark(xp, yp+1, TILES.__COOLEOLA_VERT);
    mp_grid_add_cell(oLevel.levelPf, xp, yp+1);
}

// now some enemies
repeat (irandom_range(3, 5))
{
    var ex, ey;
    do
    {
        ex = irandom_range(x + 1, x + rw - 2);
        ey = irandom_range(y + 1, y + rh - 2);
    } until (lvl[# ex, ey] & LEVEL.SOLID == 0);
    levelCreateEnemy(ex * tw + tw / 2, ey * th + th / 2, ENEMY.__PILLOW);
}
