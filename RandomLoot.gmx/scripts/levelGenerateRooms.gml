var lvl = level;
for (var i = 0, cnt = instance_number(oCellRoom); i < cnt; i++)
{
    var lf = instance_find(oCellRoom, i);
    with (lf)
    {
        // determine the type
        switch (par.size)
        {
        case 0: 
            var done = 0;
            do
            {
                switch (irandom(4))
                {
                /*case 0: // prison 1W
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
                    done = 1;
                    break;*/
                    
                case 1: // canteen
                    type = ROOMS.__PRISON_CANTEEN_1W;
                    levelPrisonCanteenInit();
                    done = 1;
                    break;
                    
                case 2: // shower
                    if (door[1] == 1)
                        continue;
                    type = ROOMS.__PRISON_SHOWER_1W;
                    levelPrisonShowerInit();
                    done = 1;
                    break;
                    
                case 3:
                    type = ROOMS.__PRISON_DEFAULT_1W;
                    levelPrisonDefaultRoomInit();
                    done = 1;
                    break;
                    
                case 4:
                    type = ROOMS.__PRISON_CHEST_1W;
                    levelPrisonChestRoomInit();
                    done = 1;
                    break;
                }
            } until (done);
            break;
            
        case 1:
            switch (choose(0, 1))
            {
            case 0:
                type = ROOMS.__PRISON_CANTEEN_2W;
                levelPrisonCanteenInit();
                break;
            }
            break;
            
        case 3:
            switch (irandom(0))
            {
            case 0:
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
            }
            break;
        }
    }
}

