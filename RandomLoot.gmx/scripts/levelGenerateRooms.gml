var lvl = level;
for (var i = 0, cnt = instance_number(oCellRoom); i < cnt; i++)
{
    var lf = instance_find(oCellRoom, i);
    with (lf)
    {
        // determine the type
        switch (choose(0, 1))
        {
        case 0:
            if (par.size != 3
               // && par.size != 0
               )
                continue;
            switch (par.size)
            {
            case 3:
                type = ROOMS.__PRISON_CELLS_SIZE_3;
                // set the floor
                levelPrisonSetFloor();             
                //split free space on cells
                // all other cells are actual cells
                levelPrisonSplitByCells();
                // fill up the cells with doors\beds\etc
                for (var cuc = 0, cuc_c = ds_list_size(children); cuc < cuc_c; cuc++)   
                    with (children[| cuc])
                        levelPrisonCellInit();
                break;
            case 0:
                type = ROOMS.__PRISON_CELLS_SIZE_1;
                // set the floor
                levelPrisonSetFloor();             
                //split free space on cells
                // all other cells are actual cells
                levelPrisonSplitByCells();
                // fill up the cells with doors\beds\etc
                for (var cuc = 0, cuc_c = ds_list_size(children); cuc < cuc_c; cuc++)   
                    with (children[| cuc])
                        levelPrisonCellInit();            
                break;
            }
            break;
            
        case 1: // canteen
            switch (par.size)
            {
            case 0: // #
                type = ROOMS.__PRISON_CANTEEN_1W;
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
                        tile_add(tlsCanteen, tw * choose(1,2), 0, tw, th, xx, yy, oLevel.floorD);
                        // some bue on floor
                        if (irandom(50) < 2)
                            tile_add(tlsPrisonShit, 4*tw, th*irandom(1), tw, th, xx, yy, oLevel.carpetD);
                    }
                }
                levelPrisonCanteenInit();            
                break;
            case 1: // ##
                type = ROOMS.__PRISON_CANTEEN_2W;
                // set the floor
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
                levelPrisonCanteenInit();
                break;
            }
            break;
            
        case 2: // leave blank
            break;
        }
    }
}

