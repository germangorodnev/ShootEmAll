var lvl = oLevel.level;
switch (doorPos)
{
case 0: // door is on the right
    var xx = x + 1,
        yy = y + 1;
    switch (choose(0, 1))
    {
    case 0: // vertical one
        // bed
        //xx += irandom(1);
        tile_add(tlsPrison, choose(2,4)*tw, 2*th, tw, th*2, xx*tw, yy*th, (-yy-1)*th);
        levelTileMark(xx, yy, TILES.__BED_VT);
        levelTileMark(xx, yy+1, TILES.__BED_VB);
        lvl[# xx, yy] |= LEVEL.SOLID;
        lvl[# xx, yy+1] |= LEVEL.SOLID;
        // curbstone
        tile_add(tlsPrison, choose(0, 1)*tw, 3*th, tw, th, (xx+1)*tw, yy*th, -yy*th-th+8);
        levelTileMark(xx+1, yy, TILES.__CURBSTONE);
        lvl[# xx + 1, yy] |= LEVEL.SOLID;
        // toilet
        tile_add(tlsPrison, 0, 0, tw, th, (xx+irandom_range(2, 3))*tw, (yy-0.8)*th, -(yy)*th-0.5);                   
        //tile_add(tlsPrison, 0, 0, tw, th, (xx+irandom_range(2, 3))*tw, (yy-0.8)*th, -(yy)*th-1-1*(pos == 3));                   
        // enemy
        levelCreateEnemy((xx+1)*tw+tw/2, (yy+1)*th+th/2, ENEMY.__PILLOW);
        break;
    case 1: // horizontal one
        xx = x+2;
        tile_add(tlsPrison, 0*tw, 2*th, tw*2, th, xx*tw, yy*th, (-yy-1)*th);
        lvl[# xx, yy] |= LEVEL.SOLID;
        lvl[# xx+1, yy] |= LEVEL.SOLID;
        levelTileMark(xx, yy, TILES.__BED_HL);
        levelTileMark(xx+1, yy, TILES.__BED_HR);
        // curbstone
        tile_add(tlsPrison, choose(0, 1)*tw, 3*th, tw, th, (xx-1)*tw, yy*th, -yy*th-th+8);
        levelTileMark(xx-1, yy, TILES.__CURBSTONE);
        lvl[# xx - 1, yy] |= LEVEL.SOLID; 
        // toilet
        tile_add(tlsPrison, tw, 0, tw, th, (xx-1)*tw-oLevel.toiletLeftoff, (yy+1)*th, -yy*th-0.5);                   
        
        var enemy = levelCreateEnemy((xx)*tw+tw/2, (yy+1)*th+tw/2, ENEMY.__PILLOW);
        enemy.ENEMY_FLAG |= ENEMY_F.__IN_PRISON;
        break;
    }
    break;
    
case 2: // door is on the left
    var xx = x + rw -1,
        yy = y + 1;
    switch (choose(0, 1))
    {
    case 0: // vertical one
        // bed
        //xx += irandom(1);
        tile_add(tlsPrison, choose(2,4)*tw, 2*th, tw, th*2, xx*tw, yy*th, (-yy-1)*th);
        lvl[# xx, yy] |= LEVEL.SOLID;
        lvl[# xx, yy+1] |= LEVEL.SOLID;
        levelTileMark(xx, yy, TILES.__BED_VT);
        levelTileMark(xx, yy+1, TILES.__BED_VB);
        // curbstone
        tile_add(tlsPrison, choose(0, 1)*tw, 3*th, tw, th, (xx-1)*tw, yy*th, -yy*th-th+8);
        levelTileMark(xx-1, yy, TILES.__CURBSTONE);
        lvl[# xx - 1, yy] |= LEVEL.SOLID;
        // toilet
        tile_add(tlsPrison, 0, 0, tw, th, (xx-2)*tw, (yy-0.8)*th, -(yy)*th-1-1*(pos == 2));                   
        break;
    case 1: // horizontal one
        xx--;
        tile_add(tlsPrison, 0*tw, 2*th, tw*2, th, xx*tw, yy*th, (-yy-1)*th);
        lvl[# xx, yy] |= LEVEL.SOLID;
        lvl[# xx+1, yy] |= LEVEL.SOLID;
        levelTileMark(xx, yy, TILES.__BED_HL);
        levelTileMark(xx+1, yy, TILES.__BED_HR);
        // curbstone
        tile_add(tlsPrison, choose(0, 1)*tw, 3*th, tw, th, (xx-1)*tw, yy*th, -yy*th-th+8);
        levelTileMark(xx-1, yy, TILES.__CURBSTONE);
        lvl[# xx - 1, yy] |= LEVEL.SOLID; 
        // toilet
        tile_add(tlsPrison, 0, 0, tw, th, (xx-2)*tw, (yy-0.8)*th, -(yy)*th-1-1*(pos == 2));                   
        break; 
    }
    break;
    
case 1: // top 
    var xx = x + 1,
        yy = y + 1;
    switch (choose(0, 1))
    {
    case 0: // vertical one
        // bed
        yy++;
        xx -= irandom(1) * (!(pos & 1));
        tile_add(tlsPrison, choose(2,4)*tw, 2*th, tw, th*2, (xx+.1)*tw, yy*th, (-yy-1)*th);
        lvl[# xx, yy] |= LEVEL.SOLID;
        lvl[# xx, yy+1] |= LEVEL.SOLID;
        levelTileMark(xx, yy, TILES.__BED_VT);
        levelTileMark(xx, yy+1, TILES.__BED_VB);
        // curbstone
        tile_add(tlsPrison, choose(0, 1)*tw, 3*th, tw, th, (xx+.1)*tw, (yy-1)*th, -yy*th-th+8);
        levelTileMark(xx, yy-1, TILES.__CURBSTONE);
        lvl[# xx, yy - 1] |= LEVEL.SOLID;
        // toilet
        tile_add(tlsPrison, 0, 0, tw, th, (x+rw-1)*tw, (yy-1.8)*th, -(y+1)*th-0.5);                   
        break;
    case 1: // horizontal one
        xx -= !(pos & 1);
        yy++;
        tile_add(tlsPrison, 0*tw, 2*th, tw*2, th, (xx+.2)*tw, yy*th, (-yy-1)*th);
        lvl[# xx, yy] |= LEVEL.SOLID;
        lvl[# xx+1, yy] |= LEVEL.SOLID;
        levelTileMark(xx, yy, TILES.__BED_HL);
        levelTileMark(xx+1, yy, TILES.__BED_HR);
        // curbstone
        tile_add(tlsPrison, choose(0, 1)*tw, 3*th, tw, th, (xx+.2)*tw, (yy-1)*th, -yy*th-5);
        levelTileMark(xx, yy-1, TILES.__CURBSTONE);
        lvl[# xx, yy - 1] |= LEVEL.SOLID; 
        // toilet
        tile_add(tlsPrison, 0, 0, tw, th, (x+rw-1)*tw, (yy-1.8)*th, -(y+1)*th-0.5);                   
        break;
    }
    break;

case 3: // bottom    
    var xx = x + 1,
        yy = y + 1;
    switch (choose(0, 1))
    {
    case 0: // vertical one
        // bed
        //xx -= (pos & 1 == 0)
        xx++;
        tile_add(tlsPrison, choose(2,4)*tw, 2*th, tw, th*2, (xx)*tw, yy*th, (-yy-1)*th);
        lvl[# xx, yy] |= LEVEL.SOLID;
        lvl[# xx, yy+1] |= LEVEL.SOLID;
        levelTileMark(xx, yy, TILES.__BED_VT);
        levelTileMark(xx, yy+1, TILES.__BED_VB);
        // curbstone
        tile_add(tlsPrison, choose(0, 1)*tw, 3*th, tw, th, (xx-1)*tw, (yy)*th, -yy*th-th+8);
        levelTileMark(xx-1, yy, TILES.__CURBSTONE);
        lvl[# xx-1, yy] |= LEVEL.SOLID;
        // toilet
        tile_add(tlsPrison, 0, 0, tw, th, (x+rw-1)*tw, (yy-0.8)*th, -(yy)*th-1*(pos >= 2));                   
        break;
    case 1: // horizontal one
        xx++;
        tile_add(tlsPrison, 0*tw, 2*th, tw*2, th, (xx)*tw, yy*th, (-yy-1)*th);
        lvl[# xx, yy] |= LEVEL.SOLID;
        lvl[# xx+1, yy] |= LEVEL.SOLID;
        levelTileMark(xx, yy, TILES.__BED_HL);
        levelTileMark(xx+1, yy, TILES.__BED_HR);
        // curbstone
        tile_add(tlsPrison, choose(0, 1)*tw, 3*th, tw, th, (xx-1)*tw, (yy)*th, -yy*th-th+8);
        levelTileMark(xx-1, yy, TILES.__CURBSTONE);
        lvl[# xx-1, yy] |= LEVEL.SOLID; 
        // toilet
        tile_add(tlsPrison, 0, 0, tw, th, (x+rw-1)*tw, (yy-0.8)*th, -(yy)*th-1*(pos >= 2));                   
        break;
    }
    break; 
}



