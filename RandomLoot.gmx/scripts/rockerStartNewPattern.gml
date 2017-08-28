// random
weaponObj.canAttack = 1;

switch (choose(0, 1, 2, 3))
{
case 0:
    rockerSetState(ENEMY_STATE.__ROCKER_MINIGUN_1); break;
case 1:
    rockerSetState(ENEMY_STATE.__ROCKER_GUITAR_1); break;
case 2:
    rockerSetState(ENEMY_STATE.__ROCKER_MOLOTOV_1); break;
case 3:
    rockerSetState(ENEMY_STATE.__ROCKER_MINIGUN_2); break;
case 4:
    rockerSetState(ENEMY_STATE.__ROCKER_UZIS_1); break;
}

