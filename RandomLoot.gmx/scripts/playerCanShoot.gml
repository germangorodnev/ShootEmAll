if (weapon == WEAPONS.__NONE)
    return 0;
if (!canAttack)
    return -1;
if (weaponAmmo < weaponInf[W_PR.__BULLETS_PER_SHOT])
    return -2;
return 1;
