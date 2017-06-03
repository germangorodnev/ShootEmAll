///gameGetWeaponType(WEAPONS.__ type)
return (WEAPON_TYPE.__RANGE * (argument[0] > WEAPONS.__RANGED_BEGIN)) 
    + (WEAPON_TYPE.__MELEE * (argument[0] > WEAPONS.__MELEE_BEGIN && argument[0] < WEAPONS.__RANGED_BEGIN));

