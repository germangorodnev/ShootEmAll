// set the floor
var lvl = oLevel.level,
    collvl = oLevel.colLevel,
    ww = oLevel.ww,
    hh = oLevel.hh;
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
        tile_add(tlsFloor, !((i + j) mod 4 == 0) * tw, 0, tw, th, xx, yy, oLevel.floorD);
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
                        tile_add(tlsPrisonDefaultRoom, tw*2, th*1, tw, th, tx+tw, ty, -ty-th*4);
                        //levelTileMark(xx+1, yy, TILES.__WALL);    
                    }
                }
                else
                {
                    tile_layer_delete_at(-ty-th, tx+tw, ty);
                    tile_add(tlsPrisonDefaultRoom, tw*2, th*2, tw, th, tx+tw, ty, -ty-th);
                    //levelTileMark(xx+1, yy, TILES.__WALL);  
                }    

            if (left)
                if (!bottom)
                {
                    if (bottomLeft)
                    {
                        tile_layer_delete_at(-ty-th*4, tx-tw, ty);
                        tile_add(tlsPrisonDefaultRoom, tw*0, th*1, tw, th, tx-tw, ty, -ty-th*4);
                        //levelTileMark(xx-1, yy, TILES.__WALL); 
                    }
                }
                else
                {
                    tile_layer_delete_at(-ty-th, tx-tw, ty);
                    tile_add(tlsPrisonDefaultRoom, tw*0, th*2, tw, th, tx-tw, ty, -ty-th);
                    //levelTileMark(xx-1, yy, TILES.__WALL);  
                }

            if (top)
                if (!topRight)
                {
                    if (topLeft)
                    {
                        tile_layer_delete_at(-ty-th, tx+tw, ty);
                        tile_add(tlsPrisonDefaultRoom, tw*5, th*2, tw, th, tx, ty-th, -ty);
                        //levelTileMark(xx, yy-1, TILES.__WALL);  
                    }
                }
                else if (!topLeft)
                {
                    tile_layer_delete_at(-ty, tx, ty-th);
                    tile_add(tlsPrisonDefaultRoom, tw*5, th*1, tw, th, tx, ty-th, -ty);  
                    //levelTileMark(xx, yy-1, TILES.__WALL);                                            
                }
                else
                {
                    tile_layer_delete_at(-ty, tx, ty-th);
                    tile_add(tlsPrisonDefaultRoom, tw*1, th*0, tw, th, tx, ty-th, -ty);    
                    //levelTileMark(xx, yy-1, TILES.__WALL);                                            
                }                    
                        
            if (bottom)
                if (!bottomRight)
                {
                    tile_layer_delete_at(-ty-th*4, tx, ty);
                    tile_add(tlsPrisonDefaultRoom, tw*4, th*2, tw, th, tx, ty, -ty-th*4);
                    //levelTileMark(xx, yy+1, TILES.__WALL);                                            
                }
                else if (!bottomLeft)
                {
                    tile_layer_delete_at(-ty-th*4, tx, ty);
                    tile_add(tlsPrisonDefaultRoom, tw*3, th*2, tw, th, tx, ty, -ty-th*4);
                    //levelTileMark(xx, yy+2, TILES.__WALL);                                            
                }
                else
                {
                    if (!left)
                    {
                        tile_layer_delete_at(-ty-th*2, tx, ty);
                        tile_add(tlsPrisonDefaultRoom, tw*1, th*2, tw, th, tx, ty, -ty-th*2); //ch2005 
                        //levelTileMark(xx, yy+1, TILES.__WALL);                                            
                    }
                    else if (!right)   
                    {
                        tile_layer_delete_at(-ty-th, tx, ty);
                        tile_add(tlsPrisonDefaultRoom, tw*1, th*2, tw, th, tx, ty, -ty-th); 
                        //levelTileMark(xx, yy+1, TILES.__WALL);                                            
                    }
                    else
                    {
                        tile_layer_delete_at(-ty, tx, ty-th);
                        tile_add(tlsPrisonDefaultRoom, tw*0, th*2, tw, th, tx, ty-th, -ty);
                        ////levelTileMark(xx, yy-1, TILES.__WALL);                                            
                        //levelTileMark(xx-1, yy, TILES.__WALL);                                            
                    }
                        
                }

            if (!bottomLeft && !bottomRight && bottom)              
            {
                tile_layer_delete_at(-ty-th*5, tx, ty);
                tile_add(tlsPrisonDefaultRoom, tw*1, th*3, tw, th, tx, ty, -ty-th*5); 
                //levelTileMark(xx, yy, TILES.__WALL);
            }
                         
            if (topRight)
                if (top && right)
                {
                    tile_layer_delete_at(-ty-th*4, tx+tw, ty-th);
                    tile_add(tlsPrisonDefaultRoom, tw*2, th*0, tw, th, tx + tw, ty - th, -ty-th*4);
                    //levelTileMark(xx+1, yy-1, TILES.__WALL);
                }

            if (topLeft)
                if (top && left)
                {
                    tile_layer_delete_at(-ty-th*4, tx-tw, ty-th);
                    tile_add(tlsPrisonDefaultRoom, tw*0, th*0, tw, th, tx - tw, ty - th, -ty-th*4);
                    //levelTileMark(xx-1, yy-1, TILES.__WALL);
                }
                                       
            if (!topLeft && !topRight && top)
            {
                tile_layer_delete_at(-ty, tx, ty-th);
                tile_add(tlsPrisonDefaultRoom, tw*0, th*3, tw, th, tx, ty-th, -ty);    
                //levelTileMark(xx, yy-1, TILES.__WALL);
            }                                      
        }        
    }    
}
// carpet
levelPrisonSmallCarpetSet((x + 3.5), (y + 3), 1);

// CHEST
instance_create((x + 5) * tw, (y + 4.5) * th, oCrate);
