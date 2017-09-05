var lvl = level;
// first of all - create 1x1 start room
var ncr = noone,
    rcnt = instance_number(oCellRoom),
    number;
do
{
    number = irandom(rcnt - 1);
    ncr = instance_find(oCellRoom, number);
} until (ncr.par.size == 0);

// set it as start room
with (ncr)
{
    type = ROOMS.__START_ROOM;
    oLevel.playerX = (x + rw / 2) * tw;
    oLevel.playerY = (y + rh / 2) * th;
    oLevel.rA[ind] = 0;
    levelPrisonStartRoomInit();
}

for (var i = 0, cnt = instance_number(oCellRoom); i < cnt; i++)
{
    var lf = instance_find(oCellRoom, i);
    with (lf)
    {
        if (type != ROOMS.__NONE)
            continue;
        // determine the type
        switch (par.size)
        {
        case 0: 
            switch (irandom(4))
            {               
            case 1: // canteen
                type = ROOMS.__PRISON_CANTEEN_1W;
                levelPrisonCanteenInit();
                break;
                
            case 2: // shower
                var updoorscnt = 0;
                if (doors[1, 0] != noone)
                    continue;
                type = ROOMS.__PRISON_SHOWER_1W;
                levelPrisonShowerInit();
                break;
                
            case 3:
                type = ROOMS.__PRISON_DEFAULT_1W;
                levelPrisonDefaultRoomInit();
                break;
                
            case 4:
                type = ROOMS.__PRISON_CHEST_1W;
                levelPrisonChestRoomInit();
                break;
            }
            break;
            
        case 1:
            switch (choose(0))
            {
            case 0:
                type = ROOMS.__PRISON_CANTEEN_2W;
                levelPrisonCanteenInit();
                break;
            }
            break;
            
        case 3:
            if (!bossRoom)
            {
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
            }
            else
            {
                type = ROOMS.__PRISON_BOSS_2X2;
                levelBossRoomInit();
            }
            break;
        }
    }
}

