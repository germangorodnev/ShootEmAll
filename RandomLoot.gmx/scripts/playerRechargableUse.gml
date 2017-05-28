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
        var idd = id;
        with (instance_create(xcr, ycr, oLaserMine))
        {
            laserMineInit(rlside);
            parent = idd;
        }
        used = 1;
    }
    else
        used = 0;
    break;
    
case RECHARGABLE.__DYNAMITE:
    used = 1;
    var cr = instance_create(x, y - 20, oDynamite);   
    cr.parent = id;
    break;
    
case RECHARGABLE.__STICKY_GRENADE:
    used = 1;
    var cr = instance_create(x, y - 20, oStickyGrenade);   
    cr.parent = id;
    cr.direction = mousedir;
    break;
    
case RECHARGABLE.__BOOMERANG:
    used = 1;
    var cr = instance_create(x, y - 20, oBoomerang);   
    cr.parent = id;
    cr.direction = mousedir;
    break;
}

if (used)
{
    rechargablePar[2] = rechargablePar[1];   
}
