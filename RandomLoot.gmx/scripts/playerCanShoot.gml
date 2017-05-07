if (weapon == WEAPONS.__NONE)
    return 0;
if (!weaponObj.canAttack)
    return -1;
    
cannot &= ~CANNOT.WALL;
if (weaponType == WEAPON_TYPE.__RANGE)
{
    if (!colPositionFree(weaponObj.x + lengthdir_x(33, mousedir), 
        weaponObj.y + lengthdir_y(33, mousedir), collideWith))
        {
            cannot |= CANNOT.WALL;
            return -4;    
        }
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
