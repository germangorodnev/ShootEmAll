// set the floor
var lvl = oLevel.level,
    collvl = oLevel.colLevel,
    ww = oLevel.ww,
    hh = oLevel.hh;
// floor
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
        var fltl = irandom(100);
        if (fltl >= 3)
        {
            tile_add(tlsPrisonShowerFloorTitles, tw * choose(1, 2, 3), 0, tw, th, xx, yy, oLevel.floorD);        
            if (irandom(100) < 4)
                tile_add(tlsPrisonShowerFloorTitles, tw * choose(2, 3), th * choose(2, 3), tw, th, xx, yy, oLevel.carpetD);          
        }
        else
            tile_add(tlsPrisonShowerFloorTitles, 0, 0, tw, th, xx, yy, oLevel.floorD);
    }
}
// now walls
for (var xx = x, cx = x + rw; xx < cx; xx++)
{
    for (var yy = y, cy = y + rh; yy < cy; yy++)
    {
        var tx = xx * tw,
            ty = yy * th;
        if  (lvl[# xx, yy] & LEVEL.FLOOR)
        {            
            var left = lvl[# median(0, xx - 1, ww - 1), yy] & LEVEL.FLOOR == 0,
                right = lvl[# median(0, xx + 1, ww - 1), yy] & LEVEL.FLOOR == 0,
                top = lvl[# xx, median(0, yy - 1, hh - 1)] & LEVEL.FLOOR == 0,
                bottom = lvl[# xx, median(0, yy + 1, hh - 1)] & LEVEL.FLOOR == 0;
                
            var topLeft = lvl[# median(0, xx - 1, ww - 1), median(0, yy - 1, hh - 1)] & LEVEL.FLOOR == 0,
                topRight = lvl[# median(0, xx + 1, ww - 1), median(0, yy - 1, hh - 1)] & LEVEL.FLOOR == 0,
                bottomLeft = lvl[# median(0, xx - 1, ww - 1), median(0, yy + 1, hh - 1)] & LEVEL.FLOOR == 0,
                bottomRight = lvl[# median(0, xx + 1, ww - 1), median(0, yy + 1, hh - 1)] & LEVEL.FLOOR == 0;               

            if (right)
                if (!bottom)
                {
                    if (bottomRight)
                    {
                        tile_layer_delete_at(-ty-th*4, tx+tw, ty);
                        tile_add(tlsPrisonShowerWalls, tw*2, th*1, tw, th, tx+tw, ty, -ty-th*4);
                        //levelTileMark(xx+1, yy, TILES.__WALL);    
                    }
                }
                else
                {
                    tile_layer_delete_at(-ty-th, tx+tw, ty);
                    tile_add(tlsPrisonShowerWalls, tw*2, th*2, tw, th, tx+tw, ty, -ty-th);
                    //levelTileMark(xx+1, yy, TILES.__WALL);  
                }    

            if (left)
                if (!bottom)
                {
                    if (bottomLeft)
                    {
                        tile_layer_delete_at(-ty-th*4, tx-tw, ty);
                        tile_add(tlsPrisonShowerWalls, tw*0, th*1, tw, th, tx-tw, ty, -ty-th*4);
                        //levelTileMark(xx-1, yy, TILES.__WALL); 
                    }
                }
                else
                {
                    tile_layer_delete_at(-ty-th, tx-tw, ty);
                    tile_add(tlsPrisonShowerWalls, tw*0, th*2, tw, th, tx-tw, ty, -ty-th);
                    //levelTileMark(xx-1, yy, TILES.__WALL);  
                }

            if (top)
                if (!topRight)
                {
                    if (topLeft)
                    {
                        tile_layer_delete_at(-ty-th, tx+tw, ty);
                        tile_add(tlsPrisonShowerWalls, tw*5, th*2, tw, th, tx, ty-th, -ty);
                        //levelTileMark(xx, yy-1, TILES.__WALL);  
                    }
                }
                else if (!topLeft)
                {
                    tile_layer_delete_at(-ty, tx, ty-th);
                    tile_add(tlsPrisonShowerWalls, tw*5, th*1, tw, th, tx, ty-th, -ty);  
                    //levelTileMark(xx, yy-1, TILES.__WALL);                                            
                }
                else
                {
                    tile_layer_delete_at(-ty, tx, ty-th);
                    tile_add(tlsPrisonShowerWalls, tw*1, th*0, tw, th, tx, ty-th, -ty);    
                    //levelTileMark(xx, yy-1, TILES.__WALL);                                            
                }                    
                        
            if (bottom)
                if (!bottomRight)
                {
                    tile_layer_delete_at(-ty-th*4, tx, ty);
                    tile_add(tlsPrisonShowerWalls, tw*4, th*2, tw, th, tx, ty, -ty-th*4);
                    //levelTileMark(xx, yy+1, TILES.__WALL);                                            
                }
                else if (!bottomLeft)
                {
                    tile_layer_delete_at(-ty-th*4, tx, ty);
                    tile_add(tlsPrisonShowerWalls, tw*3, th*2, tw, th, tx, ty, -ty-th*4);
                    //levelTileMark(xx, yy+2, TILES.__WALL);                                            
                }
                else
                {
                    if (!left)
                    {
                        tile_layer_delete_at(-ty-th*2, tx, ty);
                        tile_add(tlsPrisonShowerWalls, tw*1, th*2, tw, th, tx, ty, -ty-th*2); //ch2005 
                        //levelTileMark(xx, yy+1, TILES.__WALL);                                            
                    }
                    else if (!right)   
                    {
                        tile_layer_delete_at(-ty-th, tx, ty);
                        tile_add(tlsPrisonShowerWalls, tw*1, th*2, tw, th, tx, ty, -ty-th); 
                        //levelTileMark(xx, yy+1, TILES.__WALL);                                            
                    }
                    else
                    {
                        tile_layer_delete_at(-ty, tx, ty-th);
                        tile_add(tlsPrisonShowerWalls, tw*0, th*2, tw, th, tx, ty-th, -ty);
                        ////levelTileMark(xx, yy-1, TILES.__WALL);                                            
                        //levelTileMark(xx-1, yy, TILES.__WALL);                                            
                    }
                        
                }

            if (!bottomLeft && !bottomRight && bottom)              
            {
                tile_layer_delete_at(-ty-th*5, tx, ty);
                tile_add(tlsPrisonShowerWalls, tw*1, th*3, tw, th, tx, ty, -ty-th*5); 
                //levelTileMark(xx, yy, TILES.__WALL);
            }
                         
            if (topRight)
                if (top && right)
                {
                    tile_layer_delete_at(-ty-th*4, tx+tw, ty-th);
                    tile_add(tlsPrisonShowerWalls, tw*2, th*0, tw, th, tx + tw, ty - th, -ty-th*4);
                    //levelTileMark(xx+1, yy-1, TILES.__WALL);
                }

            if (topLeft)
                if (top && left)
                {
                    tile_layer_delete_at(-ty-th*4, tx-tw, ty-th);
                    tile_add(tlsPrisonShowerWalls, tw*0, th*0, tw, th, tx - tw, ty - th, -ty-th*4);
                    //levelTileMark(xx-1, yy-1, TILES.__WALL);
                }
                                       
            if (!topLeft && !topRight && top)
            {
                tile_layer_delete_at(-ty, tx, ty-th);
                tile_add(tlsPrisonShowerWalls, tw*0, th*3, tw, th, tx, ty-th, -ty);    
                //levelTileMark(xx, yy-1, TILES.__WALL);
            }                                      
        }        
    }    
}
// now split wall
for (var i = y-1, ci = y + 5, cx = x + rw - 5, tx = cx * tw; i < ci; i++)
{
    var ty = i * th;
    levelTileMark(cx, i, TILES.__SHOWER_WALL_RIGHT);   
    lvl[# cx, i] |= LEVEL.WALL;     
    lvl[# cx, i] |= LEVEL.SOLID;     
    if (i == ci - 1)
    {
        tile_add(tlsPrisonShowerWalls, tw*3, th*3, tw, th, tx, ty, -ty-th);    
    }
    else
    {
        tile_add(tlsPrisonShowerWalls, tw*2, th*1, tw, th, tx, ty, -ty-th);    
    }
}
// tumb
for (var i = x + rw - 5, ci = x + rw-1, cy = y, ty = cy * th - 48; i < ci; i++)
{
    var tx = (i * tw) + tw / 2,
        tux = (3 + irandom(1))*tw,
        tuy = irandom(1)*th;
    tile_add(tlsPrisonShowerIndoor, tux, tuy, tw, th, tx, ty, -ty-th);
    lvl[# i, cy] |= LEVEL.SOLID;    
    levelTileMark(i, cy, TILES.__SHOWER_TUMB);        
}
var sx = x + rw - 1 - irandom(3),
    sy = y + irandom(2);
lvl[# sx, sy] |= LEVEL.SOLID;    
levelTileMark(sx, sy, TILES.__SHOWER_STOOL);        
tile_add(tlsPrisonShowerIndoor, tw*3, th*2, tw, th, sx*tw, sy*th, -sy*th-40);
// showers
for (var i = x, ci = x + 5, ty = (y-1)* th+12; i < ci; i++)
{
    if (lvl[# i, y - 1] & LEVEL.WALL == 0)
        continue;
    var tux = irandom(2) * tw,
        tuy = 0,
        tx = i * tw; 
    tile_add(tlsPrisonShowerIndoor, tux, tuy, tw, th, tx, ty, -ty-th+12);
}
// vert one
for (var i = y+1, ci = y + rh - 2, tx = x * tw; i < ci; i++)
{
    var tux = irandom(1) * tw,
        tuy = th,
        ty = i * th; 
    tile_add(tlsPrisonShowerIndoor, tux, tuy, tw, th, tx, ty, -ty-th*2);
}
// some soap
repeat(irandom_range(1, 5))
{
    var mx, my; 
    do
    {
        mx = irandom_range(x + 1, x + rw - 2);
        my = irandom_range(y + 1, y + rh - 2);    
    } until (lvl[# mx, my] & (LEVEL.SOLID | LEVEL.WALL) == 0);
    var ty = irandom_range(2,3);
    var tx = irandom(2) * (ty == 2) + (1 + irandom(1)) * (ty == 3),
        dep = oLevel.carpetD;
    if (tx == 1 && ty == 3)
    {
        lvl[# mx, my] |= LEVEL.SOLID;    
        levelTileMark(mx, my, TILES.__SHOWER_WET); 
        dep = -my*th-35;           
    } 
    else if (tx == 2 && ty == 3)
    {
        lvl[# mx, my] |= LEVEL.SOLID;    
        levelTileMark(mx, my, TILES.__SHOWER_BUCKET);                
        dep = -my*th-35;           
    }
    tx *= tw;
    ty *= th;
    mx *= tw;
    my *= th;
    tile_add(tlsPrisonShowerIndoor, tx, ty, tw, th, mx, my, dep);
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
    levelCreateEnemy(ex * tw + tw / 2, ey * th + th / 2, 
        choose(ENEMY.__PILLOW, ENEMY.__OCTO_ATTACK, ENEMY.__OCTO_GUARD));
}

