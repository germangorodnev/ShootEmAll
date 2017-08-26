var used = 0;

switch (singleuse)
{
case SINGLEUSE.__FULL_HEART:
    if (hp < _hp)
    {
        playerChangeHP(id, 2);
        used = 1;
    }
    break;
    
case SINGLEUSE.__40_SHOTGUN_SHELLS:
    used = 1;
    ammo[AMMO.__SHOTGUN] += 40;
    break;
    
case SINGLEUSE.__INF_AMMO:
    used = 1;
    if (weaponType == WEAPON_TYPE.__RANGE)
    {
        SPECIAL_FLAGS |= SPECIAL.__INF_AMMO;
        infAmmoTmr = 30 * room_speed;
    }
    break;
    
case SINGLEUSE.__CHOCO_1:
case SINGLEUSE.__CHOCO_2:
case SINGLEUSE.__CHOCO_3:
    if (hp < _hp)
    {
        playerChangeHP(id, 1);
        used = 1;
    }
    break;
    
case SINGLEUSE.__BEER_1:
    if (hp < _hp)
    {
        playerChangeHP(id, 2);
        used = 1;
    }
    break;
}


if (used)
{
    singleuse = SINGLEUSE.__NONE;    
}
