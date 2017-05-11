var lvl = level;
for (var ch = 0, cnt = instance_number(oCellRoom); ch < cnt; ch++)
{
    var lf = instance_find(oCellRoom, ch);
    with (lf)
    {
        // determine the type
        switch (type)
        {
        case ROOMS.__NONE:
            continue;
            break;
        case ROOMS.__PRISON_CELLS_SIZE_3:
            /*
            // PRISON //
            */
            // go through the child cells
            for (var k = 0, c = ds_list_size(children); k < c; k++)
            {
                with (children[| k])
                {
                    switch (pos)
                    {
                    /* ***************************************************************** LEFT TOP ***************************************************************** */   
                    case 0: 
                        // top - solid
                        for (var i = x, ci = x + rw; i < ci; i++)
                        {
                            if (lvl[# i, y] & LEVEL.SOLID == 0)
                                continue;
                            var tx = i * tw,
                                ty = y * th;
                            if (i == x)
                                tile_add(tlsPrisonSlats, 0, 0, tw, th, tx, ty, -ty+th);                        
                            else if (i == ci - 1)
                                tile_add(tlsPrisonSlats, 2 * tw, 0, tw, th, tx, ty, -ty+th);
                            else
                                tile_add(tlsPrisonSlats, tw, 0, tw, th, tx, ty, -ty+th);
                        }  
                        // left-solid
                        for (var i = y+1, ci = y + rh; i < ci; i++)
                        {   
                            if (lvl[# x, i] & LEVEL.SOLID == 0)
                                continue;
                            var tx = x * tw,
                                ty = i * th;
                            if (i == ci - 1)
                                tile_add(tlsPrisonSlats, 3*tw, 2*th, tw, th, tx, ty, -ty-th);
                            else
                                tile_add(tlsPrisonSlats, 0, 1 * th, tw, th, tx, ty, -ty-th);                                    
                        }
                        // right-solid
                        for (var i = y+1, ci = y + rh, cx = x + rw - 1; i < ci; i++)
                        {
                            if(lvl[# cx, i] & LEVEL.SOLID == 0)
                                continue;
                            var tx = cx * tw,
                                ty = i * th;
                            if (i == ci - 1)
                                tile_add(tlsPrisonSlats, 4*tw, 2*th, tw, th, tx, ty, -ty-th);
                            else
                                tile_add(tlsPrisonSlats, 2*tw, 1*th, tw, th, tx, ty, -ty-th);                                    
                        }
                        // bottom - solid
                        for (var i = x+1, ci = x + rw - 1, cy = y + rh - 1; i < ci; i++)
                        {
                            if (lvl[# i, cy] & LEVEL.SOLID == 0)
                                continue;   
                            var tx = i * tw,
                                ty = cy * th;
                            tile_add(tlsPrisonSlats, 1*tw, 2*th, tw, th, tx, ty, -ty-th);                                    
                        }
                        break;
                        
                    /* ***************************************************************** RIGHT TOP ***************************************************************** */                           
                    case 1: 
                        // top - solid
                        for (var i = x + 1, ci = x + rw; i < ci; i++)
                        {
                            var tx = i * tw,
                                ty = y * th;
                            if (lvl[# i, y] & LEVEL.SOLID == 0)
                                continue;
                            if (i == x)
                                tile_add(tlsPrisonSlats, 0, 0, tw, th, tx, ty, -ty+th);                        
                            else if (i == ci - 1)
                                tile_add(tlsPrisonSlats, 2 * tw, 0, tw, th, tx, ty, -ty+th);
                            else
                                tile_add(tlsPrisonSlats, tw, 0, tw, th, tx, ty, -ty+th);
                        }  
                        // right-solid
                        for (var i = y+1, ci = y + rh, cx = x + rw - 1; i < ci; i++)
                        {
                            var tx = cx * tw,
                                ty = i * th;
                            if(lvl[# cx, i] & LEVEL.SOLID == 0)
                                continue;
                            if (i == ci - 1)
                                tile_add(tlsPrisonSlats, 4*tw, 2*th, tw, th, tx, ty, -ty-th);
                            else
                                tile_add(tlsPrisonSlats, 2*tw, 1*th, tw, th, tx, ty, -ty-th);                                    
                        }
                        // bottom - solid
                        for (var i = x+1, ci = x + rw - 1, cy = y + rh - 1; i < ci; i++)
                        {
                            var tx = i * tw,
                                ty = cy * th;
                            if (lvl[# i, cy] & LEVEL.SOLID == 0)
                                continue;   
                            tile_add(tlsPrisonSlats, 1*tw, 2*th, tw, th, tx, ty, -ty-th);                                    
                        }
                        break;
                    /* ***************************************************************** LEFT BOTTOM ***************************************************************** */   
                    case 2: 
                        // left-solid
                        for (var i = y+1, ci = y + rh; i < ci; i++)
                        {   
                            if (lvl[# x, i] & LEVEL.SOLID == 0)
                                continue;
                            var tx = x * tw,
                                ty = i * th;
                            if (i == ci - 1)
                                tile_add(tlsPrisonSlats, 0*tw, 2*th, tw, th, tx, ty, -ty-th);
                            else
                                tile_add(tlsPrisonSlats, 0, 1 * th, tw, th, tx, ty, -ty-th);                                    
                        }
                        // right-solid
                        for (var i = y+1, ci = y + rh, cx = x + rw - 1; i < ci; i++)
                        {
                            if(lvl[# cx, i] & LEVEL.SOLID == 0)
                                continue;
                            var tx = cx * tw,
                                ty = i * th;
                            if (i == ci - 1)
                                tile_add(tlsPrisonSlats, 2*tw, 2*th, tw, th, tx, ty, -ty-th);
                            else
                                tile_add(tlsPrisonSlats, 2*tw, 1*th, tw, th, tx, ty, -ty-th);                                    
                        }
                        // bottom - solid
                        for (var i = x+1, ci = x + rw - 1, cy = y + rh - 1; i < ci; i++)
                        {
                            if (lvl[# i, cy] & LEVEL.SOLID == 0)
                                continue;   
                            var tx = i * tw,
                                ty = cy * th;
                            tile_add(tlsPrisonSlats, 1*tw, 2*th, tw, th, tx, ty, -ty-th);                                    
                        }                    
                        break;
                        
                    case 3: // right bot
                        // right-solid
                        for (var i = y+1, ci = y + rh, cx = x + rw - 1; i < ci; i++)
                        {
                            var tx = cx * tw,
                                ty = i * th;
                            if(lvl[# cx, i] & LEVEL.SOLID == 0)
                                continue;
                            if (i == ci - 1)
                                tile_add(tlsPrisonSlats, 2*tw, 2*th, tw, th, tx, ty, -ty-th);
                            else
                                tile_add(tlsPrisonSlats, 2*tw, 1*th, tw, th, tx, ty, -ty-th);                                    
                        }
                        // bottom - solid
                        for (var i = x+1, ci = x + rw - 1, cy = y + rh - 1; i < ci; i++)
                        {
                            var tx = i * tw,
                                ty = cy * th;
                            if (lvl[# i, cy] & LEVEL.SOLID == 0)
                                continue;   
                            tile_add(tlsPrisonSlats, 1*tw, 2*th, tw, th, tx, ty, -ty-th);                                    
                        }                    
                        break;
                    }
                    /* ***************************************************************** DOOR MARKUP ***************************************************************** */   
                    /*if (doorPosX == x) // left
                    {
                        if (doorPosY == y + 1)
                        {
                            var tile = tile_layer_find(-(doorPosY)*th, doorPosX*tw, doorPosY*th-th);
                            if (tile != -1)
                                tile_delete(tile);
                            tile_add(tlsPrisonSlats, 1*tw, 0*th, tw, th, x*tw, doorPosY*th-th, -doorPosY*th);                        
                        }
                        else if (doorPosY == median(y + 2, doorPosY, y + rh - 2))
                        {
                            var tile = tile_layer_find(-(doorPosY)*th, doorPosX*tw, (doorPosY-1)*th);
                            if (tile != -1)
                                tile_delete(tile);
                            tile_add(tlsPrisonSlats, 3*tw, 1*th, tw, th, x*tw, doorPosY*th-th, -doorPosY*th);
                        }
                    }      
                    else if (doorPosX > x && doorPosY != y) // right
                    {
                        if (doorPosY == y + 1)
                        {
                            var tile = tile_layer_find(-(doorPosY)*th, doorPosX*tw, doorPosY*th-th);
                            if (tile != -1)
                                tile_delete(tile);
                            tile_add(tlsPrisonSlats, 1*tw, 0*th, tw, th, doorPosX*tw, doorPosY*th-th, -doorPosY*th);                        
                        }
                        else if (doorPosY == median(y + 2, doorPosY, y + rh - 2))
                        {
                            var tile = tile_layer_find(-(doorPosY)*th, doorPosX*tw, (doorPosY-1)*th);
                            if (tile != -1)
                                tile_delete(tile);
                            tile_add(tlsPrisonSlats, 4*tw, 1*th, tw, th, doorPosX*tw, doorPosY*th-th, -doorPosY*th);
                        }
                    }   
                    else if (doorPosY == y) // top
                    {}
                    else // bottom
                    {}*/          
                }
            }
            break;
        }
    }
}

