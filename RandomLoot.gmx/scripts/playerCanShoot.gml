if (weapon == WEAPONS.__NONE)
    return 0;
if (!weaponObj.canAttack)
    return -1;
if (weaponType == WEAPON_TYPE.__RANGE)
{
    // checks for range
    if (weaponAmmo < weaponInf[W_PR.__BULLETS_PER_SHOT])
        return -2;
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
