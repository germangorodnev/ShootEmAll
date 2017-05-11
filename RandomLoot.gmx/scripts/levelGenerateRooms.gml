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
            if (par.size != 3)
                continue;
            type = ROOMS.__PRISON_CELLS_SIZE_3;
            /*
            // PRISON //
            */
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
                    tile_add(tlsPrison, tw * 3, 0, tw, th, xx, yy, oLevel.floorD);
                }
            }
            //split free space on cells
            // all other cells are actual cells
            levelPrisonSplitByCells();
            // fill up the cells with doors\beds\etc
            for (var cuc = 0, cuc_c = ds_list_size(children); cuc < cuc_c; cuc++)   
                with (children[| cuc])
                    levelPrisonCellInit();
            break;
            
        case 1: // leave blank
            break;
        }
    }
}

