switch (weapon)
{
case WEAPONS.__BORIAN_BULG:
    // restore some bullets
    if (restore && !--restore)
    {
        restore = weaponInf[W_PR.__RELOAD_TIME];
        weaponAmmo = min(weaponAmmo + 1, weaponInf[W_PR.__SCORE_SIZE]);
    }
    break;
}

