///rockerChangeWeapon(ENEMY_WEAPON w)
weaponType = WEAPON_TYPE.__RANGE;
if (argument[0] == ENEMY_WEAPON.__ROCKER_GUITAR)
    weaponType = WEAPON_TYPE.__MELEE;

switch (argument[0])
{
case ENEMY_WEAPON.__ROCKER_UZI:
    weapon = argument[0];
    weaponObj2 = instance_create(x, y, oEnemyWeapon);
    weaponObj2.parent = id;
    enemyWeaponInit(weapon);
    break;
default:
    weapon = argument[0];
    enemyWeaponInit(weapon);
    with (weaponObj2)
        instance_destroy();
    weaponObj2 = noone;
    break;
}

