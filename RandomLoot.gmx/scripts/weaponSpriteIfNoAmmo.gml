if (weaponSpriteNoammo != -1)
{
    if (weaponAmmo == 0
        && weaponObj.state != WEAPON_STATES.__RANGE_SHOT
        && weaponObj.state != WEAPON_STATES.__RANGE_RELOAD)
    {
        var ns = weaponSpriteNoammo;
        with (weaponObj)
            weaponSetSprite(ns, 0);
    }
}

