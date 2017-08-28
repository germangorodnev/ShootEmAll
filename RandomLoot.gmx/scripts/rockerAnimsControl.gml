// 4 dirs anim
switch (weapon)
{
case ENEMY_WEAPON.__ROCKER_MINIGUN:
    xsc = 1;
    vecdir = 1;
    anims[ENEMY_ANIM.__IDLE] = sRockerGuitarBack;
    // x\y off 0
    weaponXoff = 0;
    weaponYoff = -30;
    setSprIfNotSet(anims[ENEMY_ANIM.__IDLE], 0);
    switch (dir)
    {
    case 0:
        image_index = 0;
        with (weaponObj)
        {
        }
        break;    
    case 1:
        image_index = 2;
        vecdir = -1;
        with (weaponObj)
        {
        }
        break;    
    case 2:
        image_index = 0;
        xsc = -1;
        with (weaponObj)
        {
        }
        break;    
    case 3:
        image_index = 1;
        with (weaponObj)
        {

        }
        break;    
    }
    break;
    
case ENEMY_WEAPON.__ROCKER_GUITAR:
    vecdir = 1;
    anims[ENEMY_ANIM.__IDLE] = sRockerNoGuitarBack;
    setSprIfNotSet(anims[ENEMY_ANIM.__IDLE], 0);
    weaponXoff = 22;
    weaponYoff = -30;
    switch (dir)
    {
    case 0:
        image_index = 0;
        break;    
    case 1:
        image_index = 2;
        vecdir = -1;
        break;    
    case 2:
        image_index = 0;
        break;    
    case 3:
        image_index = 1;
        break;    
    }
    break;
    
case ENEMY_WEAPON.__ROCKER_UZI:
    //xsc = 1;
    vecdir = 1;
    anims[ENEMY_ANIM.__IDLE] = sRockerGuitarBack;
    // x\y off 0
    weaponXoff = 22;
    weaponYoff = -30;
    setSprIfNotSet(anims[ENEMY_ANIM.__IDLE], 0);
    switch (dir)
    {
    case 0:
        image_index = 0;
        with (weaponObj)
        {
        }
        break;    
    case 1:
        image_index = 2;
        vecdir = -1;
        with (weaponObj)
        {
        }
        break;    
    case 2:
        image_index = 0;
        //xsc = -1;
        with (weaponObj)
        {
        }
        break;    
    case 3:
        image_index = 1;
        with (weaponObj)
        {

        }
        break;    
    }
    break;
}
anims[ENEMY_ANIM.__WALK] = anims[ENEMY_ANIM.__IDLE];

