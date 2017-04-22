///gameGetWeaponParams(WEAPONS.__, WEAPON_TYPE.__)
var ww = argument[0];
var _arr;

if (argument[1] == WEAPON_TYPE.__RANGE)
    _arr[W_PR.__RANGE_CNT - 1] = 0;
else
    _arr[W_PR.__MELEE_CNT - 1] = 0;
    
/*
    __SPRAY_ANGLE = 0,
    __SHOOT_CD,
    __SCORE_SIZE,
    __BULLETS_PER_SHOT,
    __PROJECTILE,
    __PROJECTILE_AMOUNT,
    __RELOAD_TIME,
    __DAMAGE_MIN,
    __DAMAGE_MAX,
    __BULLET_TYPE,
    
    __RANGE_CNT,
    
    __ME_DAMAGE_MIN = 0,
    __ME_DAMAGE_MAX,
    __ME_SHOOT_CD,
    __MELEE_CNT
*/

// SWITCH ADD WEAPONS
switch (ww)
{
case WEAPONS.__BLOOD_FLAG:
    _arr[W_PR.__ME_DAMAGE_MIN] = 3;
    _arr[W_PR.__ME_DAMAGE_MAX] = 7;
    _arr[W_PR.__ME_SHOOT_CD] = 1.5 * room_speed;
    break;
    
case WEAPONS.__POMPINGTON:
    _arr[W_PR.__SPRAY_ANGLE] = 7;
    _arr[W_PR.__SHOOT_CD] = 1 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 12;
    _arr[W_PR.__BULLETS_PER_SHOT] = 4;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__PELLET;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 4;
    _arr[W_PR.__RELOAD_TIME] = -3 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 3;
    _arr[W_PR.__DAMAGE_MAX] = 6;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__SHOTGUN;
    _arr[W_PR.__CRIT_CHANCE] = 5;
    _arr[W_PR.__LDIR_X] = 60; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = -9;
    break;
}

return _arr;
