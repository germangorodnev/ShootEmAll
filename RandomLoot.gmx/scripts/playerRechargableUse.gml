var used = 0;
if (rechargable == RECHARGABLE.__NONE)
    exit;
if (rechargablePar[2] != -1)
    exit;
switch (rechargable)
{
case RECHARGABLE.__LASER_MINE:
    var side = colPlaceFreeSide(x + 1, y, LEVEL.WALL),
        rlside = -1,
        xcr, ycr;
    if (side == 0)
    {
        rlside = 0;
        xcr = bbox_right + 1;
        ycr = y - sprite_height / 2;
    }
    else 
    {
        side = colPlaceFreeSide(x, y - 1, LEVEL.WALL);
        if (side == 1)
        {
            rlside = 1;
            xcr = x;
            ycr = bbox_top - 1;
        }
        else
        {
            side = colPlaceFreeSide(x - 1, y, LEVEL.WALL);
            if (side == 2)
            {
                rlside = 2;
                xcr = bbox_left - 1;
                ycr = y - sprite_height / 2;
            }
            else
            {
                side = colPlaceFreeSide(x, y + 1, LEVEL.WALL);
                if (side == 3)
                {
                    rlside = 3;
                    xcr = x;
                    ycr = bbox_bottom + 1;
                }
            }        
        }
    }
    if (rlside != -1)
    {
        with (instance_create(xcr, ycr, oLaserMine))
            laserMineInit(rlside);
        used = 1;
    }
    else
        used = 0;
    break;
}

if (used)
{
    rechargablePar[2] = rechargablePar[1];   
}
