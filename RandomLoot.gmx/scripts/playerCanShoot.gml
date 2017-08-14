if (weapon == WEAPONS.__NONE)
    return 0;
if (!weaponObj.canAttack)
    return -1;
if (weaponObj.state == WEAPON_STATES.__RANGE_RELOAD)
    return -5;
    
cannot &= ~CANNOT.WALL;
if (weaponType == WEAPON_TYPE.__RANGE)
{
    //if (!colPositionFreePrecise(weaponObj.x + lengthdir_x(weaponInf[W_PR.__LDIR_X], mousedir), 
    //    weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], mousedir), LEVEL.WALL))
    if (mousedir != median(195, mousedir, 345))
    {
        if (collisionLine(weaponObj.x, weaponObj.y,
                weaponObj.x + lengthdir_x(weaponInf[W_PR.__LDIR_X], mousedir),
                weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], mousedir), 
                LEVEL.WALL, 1) == 1)
        {
            cannot |= CANNOT.WALL;
            return -4;    
        }
    }
    /*else
    {
        if ( (collisionLine(weaponObj.x, weaponObj.y,
                weaponObj.x + lengthdir_x(weaponInf[W_PR.__LDIR_X], mousedir),
                weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], mousedir), 
                LEVEL.WALL, 1) == 1) && (col) )
        {
            cannot |= CANNOT.WALL;
            return -4;            
        }
    }*/
    // checks for range
    if (weaponAmmo < weaponInf[W_PR.__BULLETS_PER_SHOT])
    {
        return -2;
    }
    if (key[KEY.KICK] != weaponInf[W_PR.__BUTTON_STATE])   
        return -3;
}
else
{
    // checks for melee
    if (key[KEY.KICK] != weaponInf[W_PR.__ME_BUTTON_STATE])   
        return -3;
}   
return 1;
