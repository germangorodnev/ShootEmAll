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
        case ROOMS.__PRISON_CELLS_SIZE_1:
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
                            {
                                tile_add(tlsPrisonSlats, 0, 0, tw, th, tx, ty, -ty-th);               
                                levelTileMark(i, y, TILES.__PS_TOP);
                            }         
                            else if (i == ci - 1)
                            {
                                tile_add(tlsPrisonSlats, 2 * tw, 0, tw, th, tx, ty, -ty-th);
                                levelTileMark(i, y, TILES.__PS_TOP);
                            }
                            else
                            {
                                tile_add(tlsPrisonSlats, tw, 0, tw, th, tx, ty, -ty-th);
                                levelTileMark(i, y, TILES.__PS_TOP);
                            }
                        }  
                        // left-solid
                        for (var i = y+1, ci = y + rh; i < ci; i++)
                        {   
                            if (lvl[# x, i] & LEVEL.SOLID == 0)
                                continue;
                            var tx = x * tw,
                                ty = i * th;
                            if (i == y + 1 && doorPos == 2)
                            {
                                tile_add(tlsPrisonSlats, 3*tw, 1*th, tw, th, tx, ty, -ty-th);
                                levelTileMark(x, i, TILES.__PS_LEFT);                            
                            }
                            else if (i == ci - 1)
                            {
                                tile_add(tlsPrisonSlats, 3*tw, 2*th, tw, th, tx, ty, -ty-th);
                                    levelTileMark(x, i, TILES.__PS_BOTTOM) // left;
                            }
                            else
                            {
                                tile_add(tlsPrisonSlats, 0, 1 * th, tw, th, tx, ty, -ty-th);                                    
                                levelTileMark(x, i, TILES.__PS_LEFT);
                            }
                        }
                        // right-solid
                        for (var i = y+1, ci = y + rh, cx = x + rw - 1; i < ci; i++)
                        {
                            if(lvl[# cx, i] & LEVEL.SOLID == 0)
                                continue;
                            var tx = cx * tw,
                                ty = i * th;
                            if (i == ci - 1)
                            {
                                tile_add(tlsPrisonSlats, 4*tw, 2*th, tw, th, tx, ty, -ty-th);
                                levelTileMark(cx, i, TILES.__PS_BOTTOM_RIGHT); //__PS_BOTTOM_RIGHT
                            }
                            else
                            {
                                tile_add(tlsPrisonSlats, 2*tw, 1*th, tw, th, tx, ty, -ty-th*2);
                                levelTileMark(cx, i, TILES.__PS_RIGHT);
                            }                                    
                        }
                        // bottom - solid
                        for (var i = x+1, ci = x + rw - 1, cy = y + rh - 1; i < ci; i++)
                        {
                            if (lvl[# i, cy] & LEVEL.SOLID == 0)
                                continue;   
                            var tx = i * tw,
                                ty = cy * th;
                            tile_add(tlsPrisonSlats, 1*tw, 2*th, tw, th, tx, ty, -ty-th);   
                            levelTileMark(i, cy, TILES.__PS_BOTTOM);                                 
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
                            {
                                tile_add(tlsPrisonSlats, 0, 0, tw, th, tx, ty, -ty-th); 
                                levelTileMark(i, y, TILES.__PS_TOP);
                            }                       
                            else if (i == ci - 1)
                            {
                                tile_add(tlsPrisonSlats, 2 * tw, 0, tw, th, tx, ty, -ty-th);
                                levelTileMark(i, y, TILES.__PS_TOP);
                            }
                            else
                            {   
                                tile_add(tlsPrisonSlats, tw, 0, tw, th, tx, ty, -ty-th);
                                levelTileMark(i, y, TILES.__PS_TOP);
                            }
                        }  
                        // right-solid
                        for (var i = y+1, ci = y + rh, cx = x + rw - 1; i < ci; i++)
                        {
                            var tx = cx * tw,
                                ty = i * th;
                            if(lvl[# cx, i] & LEVEL.SOLID == 0)
                                continue;
                            if (i == y + 1 && doorPos == 0)
                            {
                                tile_add(tlsPrisonSlats, 4*tw, 1*th, tw, th, tx, ty, -ty-th);
                                levelTileMark(cx, i, TILES.__PS_RIGHT);                            
                            }
                            else if (i == ci - 1)
                            {
                                if (doorPos == 0)
                                {
                                    tile_add(tlsPrisonSlats, 4*tw, 2*th, tw, th, tx, ty, -ty-th);
                                    levelTileMark(cx, i, TILES.__PS_BOTTOM); //right                                
                                }
                                else
                                {
                                    tile_add(tlsPrisonSlats, 4*tw, 2*th, tw, th, tx, ty, -ty-th);
                                    levelTileMark(cx, i, TILES.__PS_BOTTOM_RIGHT); //right
                                }
                            }
                            else
                            {
                                tile_add(tlsPrisonSlats, 2*tw, 1*th, tw, th, tx, ty, -ty-th*2);                                    
                                levelTileMark(cx, i, TILES.__PS_RIGHT);
                            }
                        }
                        // bottom - solid
                        for (var i = x+1, ci = x + rw - 1, cy = y + rh - 1; i < ci; i++)
                        {
                            var tx = i * tw,
                                ty = cy * th;
                            if (lvl[# i, cy] & LEVEL.SOLID == 0)
                                continue;   
                            tile_add(tlsPrisonSlats, 1*tw, 2*th, tw, th, tx, ty, -ty-th);                                    
                            levelTileMark(i, cy, TILES.__PS_BOTTOM);                                 
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
                            if (i == y + 1 && doorPos == 2)
                            {
                                tile_add(tlsPrisonSlats, 3*tw, 1*th, tw, th, tx, ty, -ty-th);
                                levelTileMark(x, i, TILES.__PS_LEFT);                            
                            }
                            else if (i == ci - 1)
                            {
                                if (doorPos == 2)
                                {
                                    tile_add(tlsPrisonSlats, 0*tw, 2*th, tw, th, tx, ty, -ty-th);
                                    levelTileMark(x, i, TILES.__PS_BOTTOM); // LEFT
                                }
                                else
                                {
                                    tile_add(tlsPrisonSlats, 0*tw, 2*th, tw, th, tx, ty, -ty-th);
                                    levelTileMark(x, i, TILES.__PS_BOTTOM_LEFT); // LEFT                                    
                                }
                            }
                            else
                            {
                                tile_add(tlsPrisonSlats, 0, 1 * th, tw, th, tx, ty, -ty-th);  
                                levelTileMark(x, i, TILES.__PS_LEFT);
                            }                                  
                        }
                        // right-solid
                        for (var i = y+1, ci = y + rh, cx = x + rw - 1; i < ci; i++)
                        {
                            if(lvl[# cx, i] & LEVEL.SOLID == 0)
                                continue;
                            var tx = cx * tw,
                                ty = i * th;
                            if (i == ci - 1)
                            {
                                tile_add(tlsPrisonSlats, 2*tw, 2*th, tw, th, tx, ty, -ty-th);
                                levelTileMark(cx, i, TILES.__PS_BOTTOM_RIGHT);
                            }
                            else
                            {
                                tile_add(tlsPrisonSlats, 2*tw, 1*th, tw, th, tx, ty, -ty-th*2);          
                                levelTileMark(cx, i, TILES.__PS_RIGHT);
                            }                          
                        }
                        // bottom - solid
                        for (var i = x+1, ci = x + rw - 1, cy = y + rh - 1; i < ci; i++)
                        {
                            if (lvl[# i, cy] & LEVEL.SOLID == 0)
                                continue;   
                            var tx = i * tw,
                                ty = cy * th;
                            tile_add(tlsPrisonSlats, 1*tw, 2*th, tw, th, tx, ty, -ty-th);                                    
                            levelTileMark(i, cy, TILES.__PS_BOTTOM);
                        }                    
                        break;
                    /* ***************************************************************** RIGHT BOTTOM ***************************************************************** */                           
                    case 3: // right bot
                        // right-solid
                        for (var i = y+1, ci = y + rh, cx = x + rw - 1; i < ci; i++)
                        {
                            var tx = cx * tw,
                                ty = i * th;
                            if(lvl[# cx, i] & LEVEL.SOLID == 0)
                                continue;
                            if (i == y + 1 && doorPos == 0)
                            {
                                tile_add(tlsPrisonSlats, 4*tw, 1*th, tw, th, tx, ty, -ty-th);
                                levelTileMark(cx, i, TILES.__PS_RIGHT);                            
                            }
                            else if (i == ci - 1)
                            {
                                if (doorPos == 0)
                                {
                                    tile_add(tlsPrisonSlats, 2*tw, 2*th, tw, th, tx, ty, -ty-th);
                                    levelTileMark(cx, i, TILES.__PS_BOTTOM);
                                }
                                else
                                {
                                    tile_add(tlsPrisonSlats, 0*tw, 2*th, tw, th, tx, ty, -ty-th);
                                    levelTileMark(cx, i, TILES.__PS_BOTTOM_RIGHT); // LEFT                                    
                                }
                            }
                            else
                            {
                                tile_add(tlsPrisonSlats, 2*tw, 1*th, tw, th, tx, ty, -ty-th*2);
                                levelTileMark(cx, i, TILES.__PS_RIGHT);
                            }                                    
                        }
                        // bottom - solid
                        for (var i = x+1, ci = x + rw - 1, cy = y + rh - 1; i < ci; i++)
                        {
                            var tx = i * tw,
                                ty = cy * th;
                            if (lvl[# i, cy] & LEVEL.SOLID == 0)
                                continue;   
                            tile_add(tlsPrisonSlats, 1*tw, 2*th, tw, th, tx, ty, -ty-th);
                            levelTileMark(i, cy, TILES.__PS_BOTTOM);                                    
                        }                    
                        break;
                    }
                    /* ***************************************************************** DOOR MARKUP ***************************************************************** */      
                }
            }
            break;
        }
    }
}

