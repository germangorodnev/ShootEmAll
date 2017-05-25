var lvl = level;
for (var i = 0, cnt = instance_number(oCellRoom); i < cnt; i++)
{
    var lf = instance_find(oCellRoom, i);
    with (lf)
    {
        // determine the type
        switch (choose(0, 1, 2, 3))
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
                levelPrisonCanteenInit();            
                break;
            case 1: // ##
                type = ROOMS.__PRISON_CANTEEN_2W;
                levelPrisonCanteenInit();
                break;
            }
            break;
            
        case 2: // shower
            if (door[1] == 1)
                continue;
            switch (par.size)
            {
            case 0: // #
                type = ROOMS.__PRISON_SHOWER_1W;
                levelPrisonShowerInit();
                break;
            }
            break;
            
        case 3: // blank
            break;
        }
    }
}

