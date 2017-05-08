///levelPrisonSetCloset()
var side = irandom(3),  
    bx = rx,
    by = ry;
var lvlh = oLevel.ww,
    lvlw = oLevel.hh;
var lvl = oLevel.level;
var cnt = 0;

switch (side)
{
case 0: // top
    do
    {
        cnt++;
        if (cnt == 7)
            break;
        bx = irandom_range(rx, rx + rw - 2);
    } until (lvl[# bx, by] & LEVEL.WALL
    );
    lvl[# bx, by] |= LEVEL.SOLID;
    lvl[# bx + 1, by] |= LEVEL.SOLID;
    tile_add(tlsPrison, tw*0, th*2, tw*2, th, bx*tw, by*th, -by-th);
    break;
case 1: // bot
    by = ry + rh - 1;
    do
    {
        cnt++;
        if (cnt == 5)
            break;
        bx = irandom_range(rx, rx + rw - 2);
    } until (lvl[# bx, by] & LEVEL.SOLID == 0
        && lvl[# bx + 1, by] & LEVEL.SOLID == 0
        && lvl[# bx, min(lvlh - 1, by + 1)] & LEVEL.WALL
        && lvl[# bx + 1, min(lvlh - 1, by + 1)] & LEVEL.WALL);
    lvl[# bx, by] |= LEVEL.SOLID;
    lvl[# bx + 1, by] |= LEVEL.SOLID;
    tile_add(tlsPrison, tw*0, th*2, tw*2, th, bx*tw, by*th, -by-th);
    break;
case 2: // left
    bx = rx;
    do
    {
        cnt++;
        if (cnt == 5)
            break;
        by = irandom_range(ry, ry + rh - 2);                
    } until (lvl[# bx, by] & LEVEL.SOLID == 0
        && lvl[# bx, by + 1] & LEVEL.SOLID == 0
        && lvl[# max(0, bx - 1), by] & LEVEL.WALL
        && lvl[# max(0, bx - 1), by + 1] & LEVEL.WALL);
    lvl[# bx, by] |= LEVEL.SOLID;
    lvl[# bx, by + 1] |= LEVEL.SOLID;
    tile_add(tlsPrison, tw*2, th*2, tw, th*2, bx*tw, by*th, -by-th*2);
    break;
case 3: // right
    bx = rx + rw - 1;
    do
    {
        cnt++;
        if (cnt == 5)
            break;
        by = irandom_range(ry, ry + rh - 2);                
    } until (lvl[# bx, by] & LEVEL.SOLID == 0
        && lvl[# bx, by + 1] & LEVEL.SOLID == 0
        && lvl[# min(lvlw - 1, bx + 1), by] & LEVEL.WALL
        && lvl[# min(lvlw - 1, bx + 1), by + 1] & LEVEL.WALL);
    lvl[# bx, by] |= LEVEL.SOLID;
    lvl[# bx, by + 1] |= LEVEL.SOLID;
    tile_add(tlsPrison, tw*2, th*2, tw, th*2, bx*tw, by*th, -by-th*2);
    break;
}
