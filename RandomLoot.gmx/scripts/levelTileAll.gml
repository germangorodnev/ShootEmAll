var maxw = oLevel.ww,
    maxh = oLevel.hh;
with (oCellRoom)
    bspLeafAddRect(x, y, rw, rh);

with (oFloor)
    bspLeafAddRect(x, y, rw, rh);

// take walls
for (var i = 1; i < ww - 1; i ++)
    for (var j = 1; j < hh - 1; j++)
    {
        var tt = level[# i, j];
        if (tt & LEVEL.FLOOR)
        {
            if (level[# i + 1, j] & LEVEL.FLOOR == 0) 
            {
                level[# i + 1, j] |= LEVEL.WALL;
                mp_grid_add_cell(levelPf, i + 1, j);                
            }
            if (level[# i - 1, j] & LEVEL.FLOOR == 0) 
            {
                level[# i - 1, j] |= LEVEL.WALL;
                mp_grid_add_cell(levelPf, i - 1, j);
            }
            if (level[# i, j + 1] & LEVEL.FLOOR == 0) 
            {
                level[# i, j + 1] |= LEVEL.WALL;
                mp_grid_add_cell(levelPf, i, j + 1);
            }
            if (level[# i, j - 1] & LEVEL.FLOOR == 0) 
            {
                level[# i, j - 1] |= LEVEL.WALL;
                mp_grid_add_cell(levelPf, i, j - 1);
            }
        }
    }

for (var xx = 0; xx < ww; xx++)
{
    for (var yy = 0; yy < hh; yy++)
    {
        var tt = level[# xx, yy];
        var tx = xx * tw,
            ty = yy * th;
            
        // SWITCH ADD
        if  (tt & LEVEL.FLOOR)
        {
            tile_add(tlsFloor, 0, 0, tw, th, tx, ty, oLevel.floorD);
            
            var left = level[# median(0, xx - 1, ww - 1), yy] & LEVEL.FLOOR == 0,
                right = level[# median(0, xx + 1, ww - 1), yy] & LEVEL.FLOOR == 0,
                top = level[# xx, median(0, yy - 1, hh - 1)] & LEVEL.FLOOR == 0,
                bottom = level[# xx, median(0, yy + 1, hh - 1)] & LEVEL.FLOOR == 0;
                
            var topLeft = level[# median(0, xx - 1, ww - 1), median(0, yy - 1, hh - 1)] & LEVEL.FLOOR == 0,
                topRight = level[# median(0, xx + 1, ww - 1), median(0, yy - 1, hh - 1)] & LEVEL.FLOOR == 0,
                bottomLeft = level[# median(0, xx - 1, ww - 1), median(0, yy + 1, hh - 1)] & LEVEL.FLOOR == 0,
                bottomRight = level[# median(0, xx + 1, ww - 1), median(0, yy + 1, hh - 1)] & LEVEL.FLOOR == 0;               

            if (right)
                if (!bottom)
                {
                    if (bottomRight)
                    {
                        tile_add(tlsWalls, tw*2, th*1, tw, th, tx+tw, ty, -ty-th*4);
                        levelTileMark(xx+1, yy, TILES.__WALL);    
                    }
                }
                else
                {
                    tile_add(tlsWalls, tw*2, th*2, tw, th, tx+tw, ty, -ty-th);
                    levelTileMark(xx+1, yy, TILES.__WALL);  
                }    

            if (left)
                if (!bottom)
                {
                    if (bottomLeft)
                    {
                        tile_add(tlsWalls, tw*0, th*1, tw, th, tx-tw, ty, -ty-th*4);
                        levelTileMark(xx-1, yy, TILES.__WALL); 
                    }
                }
                else
                {
                    tile_add(tlsWalls, tw*0, th*2, tw, th, tx-tw, ty, -ty-th);
                    levelTileMark(xx-1, yy, TILES.__WALL);  
                }

            if (top)
                if (!topRight)
                {
                    if (topLeft)
                    {
                        tile_add(tlsWalls, tw*5, th*2, tw, th, tx, ty-th, -ty);
                        levelTileMark(xx, yy-1, TILES.__WALL);  
                    }
                }
                else if (!topLeft)
                {
                    tile_add(tlsWalls, tw*5, th*1, tw, th, tx, ty-th, -ty);  
                    levelTileMark(xx, yy-1, TILES.__WALL);                                            
                }
                else
                {
                    tile_add(tlsWalls, tw*1, th*0, tw, th, tx, ty-th, -ty);    
                    levelTileMark(xx, yy-1, TILES.__WALL);                                            
                }                    
                        
            if (bottom)
                if (!bottomRight)
                {
                    tile_add(tlsWalls, tw*4, th*2, tw, th, tx, ty, -ty-th*4);
                    levelTileMark(xx, yy+1, TILES.__WALL);                                            
                }
                else if (!bottomLeft)
                {
                    tile_add(tlsWalls, tw*3, th*2, tw, th, tx, ty, -ty-th*4);
                    levelTileMark(xx, yy+2, TILES.__WALL);                                            
                }
                else
                {
                    if (!left)
                    {
                        tile_add(tlsWalls, tw*1, th*2, tw, th, tx, ty, -ty-th*2); //ch2005 
                        levelTileMark(xx, yy+1, TILES.__WALL);                                            
                    }
                    else if (!right)   
                    {
                        tile_add(tlsWalls, tw*1, th*2, tw, th, tx, ty, -ty-th); 
                        levelTileMark(xx, yy+1, TILES.__WALL);                                            
                    }
                    else
                    {
                        tile_add(tlsWalls, tw*0, th*2, tw, th, tx, ty-th, -ty);
                        //levelTileMark(xx, yy-1, TILES.__WALL);                                            
                        levelTileMark(xx-1, yy, TILES.__WALL);                                            
                    }
                        
                }

            if (!bottomLeft && !bottomRight && bottom)              
            {
                tile_add(tlsWalls, tw*1, th*3, tw, th, tx, ty, -ty-th*5); 
                levelTileMark(xx, yy, TILES.__WALL);
            }
                         
            if (topRight)
                if (top && right)
                {
                    tile_add(tlsWalls, tw*2, th*0, tw, th, tx + tw, ty - th, -ty-th*4);
                    levelTileMark(xx+1, yy-1, TILES.__WALL);
                }

            if (topLeft)
                if (top && left)
                {
                    tile_add(tlsWalls, tw*0, th*0, tw, th, tx - tw, ty - th, -ty-th*4);
                    levelTileMark(xx-1, yy-1, TILES.__WALL);
                }
                                       
            if (!topLeft && !topRight && top)
            {
                tile_add(tlsWalls, tw*0, th*3, tw, th, tx, ty-th, -ty);    
                levelTileMark(xx, yy-1, TILES.__WALL);
            }                                      
        }
    }
}


