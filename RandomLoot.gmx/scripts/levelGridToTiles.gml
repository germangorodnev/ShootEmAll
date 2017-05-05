with (oLeaf)
{
    bspLeafAddRect(rx, ry, rw, rh);
    instance_destroy();
}
// take walls
for (var i = 1; i < ww - 1; i ++)
    for (var j = 1; j < hh - 1; j++)
    {
        var tt = level[# i, j];
        if (tt == LEVEL.FLOOR)
        {
            if (level[# i + 1, j] != LEVEL.FLOOR) level[# i + 1, j] = LEVEL.WALL;
            if (level[# i - 1, j] != LEVEL.FLOOR) level[# i - 1, j] = LEVEL.WALL;
            if (level[# i, j + 1] != LEVEL.FLOOR) level[# i, j + 1] = LEVEL.WALL;
            if (level[# i, j - 1] != LEVEL.FLOOR) level[# i, j - 1] = LEVEL.WALL;
        }
    }

// autotile
/*for (var xx = 0; xx < ww; xx++)
{
    for (var yy = 0; yy < hh; yy++)
    {
        var tx = xx * tw,
            ty = yy * th;
        var tt = level[# xx, yy];
        var north = level[# xx, median(0, yy - 1, hh - 1)] != LEVEL.VOID
                && level[# xx, median(0, yy - 1, hh - 1)] == LEVEL.FLOOR,
            
            south = level[# xx, median(0, yy + 1, hh - 1)] != LEVEL.VOID
                && level[# xx, median(0, yy + 1, hh - 1)] != LEVEL.FLOOR,
            
            west = level[# median(0, xx - 1, ww - 1), yy] != LEVEL.VOID
                && level[# median(0, xx - 1, ww - 1), yy] != LEVEL.FLOOR,
            
            east = level[# median(0, xx + 1, ww - 1), yy] != LEVEL.VOID
                && level[# median(0, xx + 1, ww - 1), yy] != LEVEL.FLOOR;
            
        var tln = 1 * north + 2 * west + 4 * east + 8 * south;
        tile_add(tlsWang, (tln % 4) * tw, (floor(tln / 4)) * th, tw, th, tx, ty, -ty);
    }
}*/

for (var xx = 0; xx < ww; xx++)
{
    for (var yy = 0; yy < hh; yy++)
    {
        var tt = level[# xx, yy];
        // SWITCH ADD
        if  (tt == LEVEL.FLOOR)
        {
            var tx = xx * tw,
                ty = yy * th;
            
            var left = level[# median(0, xx - 1, ww - 1), yy] != LEVEL.FLOOR,
                right = level[# median(0, xx + 1, ww - 1), yy] != LEVEL.FLOOR,
                top = level[# xx, median(0, yy - 1, hh - 1)] != LEVEL.FLOOR,
                bottom = level[# xx, median(0, yy + 1, hh - 1)] != LEVEL.FLOOR;
                
            var topLeft = level[# median(0, xx - 1, ww - 1), median(0, yy - 1, hh - 1)] != LEVEL.FLOOR,
                topRight = level[# median(0, xx + 1, ww - 1), median(0, yy - 1, hh - 1)] != LEVEL.FLOOR,
                bottomLeft = level[# median(0, xx - 1, ww - 1), median(0, yy + 1, hh - 1)] != LEVEL.FLOOR,
                bottomRight = level[# median(0, xx + 1, ww - 1), median(0, yy + 1, hh - 1)] != LEVEL.FLOOR;               

            if (right)
                if (!bottom)
                    tile_add(tlsWalls, tw*2, th*1, tw, th, tx+tw, ty, -ty-th);
                else
                    tile_add(tlsWalls, tw*2, th*2, tw, th, tx+tw, ty, -ty);
                    
            /*if (left)
                if (!bottom)
                    tile_add(tlsWalls, tw*0, th*1, tw, th, tx-tw, ty, -ty-th);
                else
                    tile_add(tlsWalls, tw*0, th*2, tw, th, tx-tw, ty, -ty);*/
            if (left)
                if (!bottom)
                {
                    if (bottomLeft)
                        tile_add(tlsWalls, tw*0, th*1, tw, th, tx-tw, ty, -ty-th);
                }
                else
                {
                    tile_add(tlsWalls, tw*0, th*2, tw, th, tx-tw, ty, -ty);
                }

            if (top)
                if (!topRight)
                {
                    if (topLeft)
                        tile_add(tlsWalls, tw*5, th*2, tw, th, tx, ty-th, -ty);
                }
                else if (!topLeft)
                {
                    //if (!topLeft)
                        //tile_add(tlsWalls, tw*1, th*0, tw, th, tx, ty-th, -ty);
                    //else
                        tile_add(tlsWalls, tw*5, th*1, tw, th, tx, ty-th, -ty);                        
                }
                else
                    tile_add(tlsWalls, tw*1, th*0, tw, th, tx, ty-th, -ty);
                    //if (!left)
                    //    tile_add(tlsWalls, tw*1, th*0, tw, th, tx, ty-th, -ty);
                    //else if (!right)
                    //    tile_add(tlsWalls, tw*1, th*0, tw, th, tx, ty-th, -ty);
                        
                        
            if (bottom)
                if (!bottomRight)
                    tile_add(tlsWalls, tw*4, th*2, tw, th, tx, ty, -ty-th);
                else if (!bottomLeft)
                    tile_add(tlsWalls, tw*3, th*2, tw, th, tx, ty, -ty-th);
                else
                    if (!left)
                        tile_add(tlsWalls, tw*1, th*0, tw, th, tx, ty, -ty-th); 
                    else if (!right)   
                        tile_add(tlsWalls, tw*1, th*0, tw, th, tx, ty, -ty-th); 
                    else
                        tile_add(tlsWalls, tw*0, th*2, tw, th, tx, ty-th, -ty);

            if (!bottomLeft && !bottomRight && bottom)
                tile_add(tlsWalls, tw*1, th*3, tw, th, tx, ty, -ty-th); 
                         
            if (topRight)
                if (top && right)
                    tile_add(tlsWalls, tw*2, th*0, tw, th, tx + tw, ty - th, -ty-th); 
                
            if (topLeft)
                if (top && left)
                    tile_add(tlsWalls, tw*0, th*0, tw, th, tx - tw, ty - th, -ty-th); 
                                       
            if (!topLeft && !topRight && top)
                tile_add(tlsWalls, tw*0, th*3, tw, th, tx, ty-th, -ty);                 
            
            //if (top && topLeft && !topRight)
            //    tile_add(tlsWalls, tw*2, th*2, tw, th, tx, ty-th, -ty);
                          
        }
    }
}


