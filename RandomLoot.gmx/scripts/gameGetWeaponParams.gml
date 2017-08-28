///gameGetWeaponParams(WEAPONS.__, WEAPON_TYPE.__)
var ww = argument[0];
var _arr;
// resets
if (argument[1] == WEAPON_TYPE.__RANGE)
{
    _arr[W_PR.__RANGE_CNT - 1] = 0;
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
}
else
{
    _arr[W_PR.__MELEE_CNT - 1] = 0;
    _arr[W_PR.__ME_BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__ME_CRIT_CHANCE] = 0;
}
    
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
/* ******************************************************** MELEE ***********************************************************/    
case WEAPONS.__BLOOD_FLAG:
    _arr[W_PR.__ME_DAMAGE_MIN] = 3;
    _arr[W_PR.__ME_DAMAGE_MAX] = 7;
    _arr[W_PR.__ME_SHOOT_CD] = 0.5 * room_speed;
    break;
case WEAPONS.__HALFSWORD:
    _arr[W_PR.__ME_DAMAGE_MIN] = 3;
    _arr[W_PR.__ME_DAMAGE_MAX] = 7;
    _arr[W_PR.__ME_SHOOT_CD] = 0.5 * room_speed;
    break;    
case WEAPONS.__COPPER_DEVIL:
    _arr[W_PR.__ME_DAMAGE_MIN] = 30;
    _arr[W_PR.__ME_DAMAGE_MAX] = 37;
    _arr[W_PR.__ME_SHOOT_CD] = 1 * room_speed;
    break;
case WEAPONS.__STICK:
    _arr[W_PR.__ME_DAMAGE_MIN] = 0;
    _arr[W_PR.__ME_DAMAGE_MAX] = 5;
    _arr[W_PR.__ME_SHOOT_CD] = 2;// * room_speed;
    break;
case WEAPONS.__ARIA_ARTH:
    _arr[W_PR.__ME_DAMAGE_MIN] = 25;
    _arr[W_PR.__ME_DAMAGE_MAX] = 29;
    _arr[W_PR.__ME_SHOOT_CD] = 0.2 * room_speed;
    break;
case WEAPONS.__RAZORBLADE:
    _arr[W_PR.__ME_DAMAGE_MIN] = 17;
    _arr[W_PR.__ME_DAMAGE_MAX] = 35;
    _arr[W_PR.__ME_SHOOT_CD] = 0.7 * room_speed;
    break;   
case WEAPONS.__SPECIAL_PRISONER:
    _arr[W_PR.__ME_DAMAGE_MIN] = 28;
    _arr[W_PR.__ME_DAMAGE_MAX] = 40;
    _arr[W_PR.__ME_SHOOT_CD] = 0.7 * room_speed;
    break;   
case WEAPONS.__CEREMONIAL_BORIAN:
    _arr[W_PR.__ME_DAMAGE_MIN] = 28;
    _arr[W_PR.__ME_DAMAGE_MAX] = 33;
    _arr[W_PR.__ME_SHOOT_CD] = 1 * room_speed;
    break;   
case WEAPONS.__KNIFE:
    _arr[W_PR.__ME_DAMAGE_MIN] = 5;
    _arr[W_PR.__ME_DAMAGE_MAX] = 7;
    _arr[W_PR.__ME_SHOOT_CD] = 0.5 * room_speed;
    break; 
/* ******************************************************** RANGE ***********************************************************/        
case WEAPONS.__POMPINGTON:
    _arr[W_PR.__SPRAY_ANGLE] = 7;
    _arr[W_PR.__SHOOT_CD] = 1 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 12;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__PELLET;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 4;
    _arr[W_PR.__PROJECTILE_SPEED] = 9;
    _arr[W_PR.__RELOAD_TIME] = -3 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 7;
    _arr[W_PR.__DAMAGE_MAX] = 12;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__SHOTGUN;
    _arr[W_PR.__CRIT_CHANCE] = 5;
    _arr[W_PR.__CRIT_DAMAGE_MIN] = 4;
    _arr[W_PR.__CRIT_DAMAGE_MAX] = 8;
    _arr[W_PR.__CRIT_CHANCE] = 5;
    _arr[W_PR.__LDIR_X] = 53; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 53;
    _arr[W_PR.__LDIR_DIR] = 4;
    break;
    
case WEAPONS.__RXP:
    _arr[W_PR.__SPRAY_ANGLE] = 6;
    _arr[W_PR.__SHOOT_CD] = 0.2 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 17;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__BULLET;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = -2 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 1;
    _arr[W_PR.__DAMAGE_MAX] = 10;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__BULLET;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__CRIT_DAMAGE_MIN] = 11;
    _arr[W_PR.__CRIT_DAMAGE_MAX] = 15;
    _arr[W_PR.__LDIR_X] = 20; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 20;
    _arr[W_PR.__LDIR_DIR] = 14;
    break;

case WEAPONS.__RECT1:
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = 0.5 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 120;
    _arr[W_PR.__BULLETS_PER_SHOT] = 15;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__ENERGY_LINE;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = -2 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 20;
    _arr[W_PR.__DAMAGE_MAX] = 20;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__ENERGY;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__CRIT_DAMAGE_MIN] = 25;
    _arr[W_PR.__CRIT_DAMAGE_MAX] = 28;
    _arr[W_PR.__LDIR_X] = 43; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 43;
    _arr[W_PR.__LDIR_DIR] = 0;
    break;

case WEAPONS.__ROMAN_MG:
    _arr[W_PR.__BUTTON_STATE] = 1; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = 0.05 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 120;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__FAST_BULLET;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 4 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 10;
    _arr[W_PR.__DAMAGE_MAX] = 17;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__BULLET;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 47; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 47;
    _arr[W_PR.__LDIR_DIR] = 1.5;
    break;
    
case WEAPONS.__NOVA_M:
    _arr[W_PR.__BUTTON_STATE] = 1; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = 0.25 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 32;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__FAST_BULLET;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = -2 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 17;
    _arr[W_PR.__DAMAGE_MAX] = 23;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__BULLET;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 60; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 60;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;

case WEAPONS.__BORIAN_BULG:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 7;
    _arr[W_PR.__SHOOT_CD] = 1 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 15;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__BORIAN;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 2 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 17;
    _arr[W_PR.__DAMAGE_MAX] = 35;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__BORIAN;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 55; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 55;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;
    
case WEAPONS.__GRENADE_LAUNCHER:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = 1.5 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 1;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__GRENADE_ONE_GL;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 3 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 30;
    _arr[W_PR.__DAMAGE_MAX] = 30;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__GRENADES;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 50; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 50;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;
    
case WEAPONS.__FOREST_MANTIS:
    _arr[W_PR.__BUTTON_STATE] = 1; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 1;
    _arr[W_PR.__SHOOT_CD] = 0.2 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 320;
    _arr[W_PR.__BULLETS_PER_SHOT] = 8;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__LASER;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 5 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 10;
    _arr[W_PR.__DAMAGE_MAX] = 15;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__ENERGY;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 40; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 40;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;
    
case WEAPONS.__OVERKILLINGTON:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = 2.5 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 5;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__BULLET_LINE;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 3 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 45;
    _arr[W_PR.__DAMAGE_MAX] = 55;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__BULLET;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 60; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 60;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;

case WEAPONS.__PHASER:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = 0 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 60;
    _arr[W_PR.__BULLETS_PER_SHOT] = 60;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__PHASER;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 3;
    _arr[W_PR.__RELOAD_TIME] = 12 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 35;
    _arr[W_PR.__DAMAGE_MAX] = 38;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__ENERGY;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 25; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 25;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;

case WEAPONS.__DESTRUCTOR:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 2;
    _arr[W_PR.__SHOOT_CD] = 0.02 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 6;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__BULLET;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 3 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 25;
    _arr[W_PR.__DAMAGE_MAX] = 30;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__BULLET;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 38; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 38;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;

case WEAPONS.__DOUBLE_BARREL:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 5;
    _arr[W_PR.__SHOOT_CD] = 1 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 2;
    _arr[W_PR.__BULLETS_PER_SHOT] = 2;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__PELLET;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 8;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 1 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 8;
    _arr[W_PR.__DAMAGE_MAX] = 8;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__SHOTGUN;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 40; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 40;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;

case WEAPONS.__TESLA_BOOM:
    _arr[W_PR.__BUTTON_STATE] = 1; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 0;
    _arr[W_PR.__SHOOT_CD] = 0.4 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 200;
    _arr[W_PR.__BULLETS_PER_SHOT] = 20;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__ZAP;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 3.5 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 20;
    _arr[W_PR.__DAMAGE_MAX] = 50;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__ENERGY;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 40; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 40;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;

case WEAPONS.__LASER_BEE:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = 0.3 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 240;
    _arr[W_PR.__BULLETS_PER_SHOT] = 15;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__LASER_RED;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 0;
    _arr[W_PR.__RELOAD_TIME] = 3 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 8;
    _arr[W_PR.__DAMAGE_MAX] = 13;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__ENERGY;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 27; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 27;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;

case WEAPONS.__BIG_BULG:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 4;
    _arr[W_PR.__SHOOT_CD] = 2 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 8;
    _arr[W_PR.__BULLETS_PER_SHOT] = 2;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__BIG_BULG;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 3 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 25;
    _arr[W_PR.__DAMAGE_MAX] = 45;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__BORIAN;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 60; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 60;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;
 
case WEAPONS.__ASSAULT_RIFLE:
    _arr[W_PR.__BUTTON_STATE] = 1; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 4;
    _arr[W_PR.__SHOOT_CD] = 0.2 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 320;
    _arr[W_PR.__BULLETS_PER_SHOT] = 8;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__PLASM;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = round(3 * room_speed);
    _arr[W_PR.__DAMAGE_MIN] = 10;
    _arr[W_PR.__DAMAGE_MAX] = 11;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__ENERGY;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 60; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 60;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;

case WEAPONS.__STEEL_RUFF:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 5;
    _arr[W_PR.__SHOOT_CD] = 1.5 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 2;
    _arr[W_PR.__BULLETS_PER_SHOT] = 2;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__CHAINSAW;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = 4 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 3;
    _arr[W_PR.__DAMAGE_MAX] = 3;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__GRENADES;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = -1; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = -1;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;
    
case WEAPONS.__DARTS:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = 1 * room_speed;
    _arr[W_PR.__SCORE_SIZE] = 1;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__DARTS;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = round(1.4 * room_speed);
    _arr[W_PR.__DAMAGE_MIN] = 5;
    _arr[W_PR.__DAMAGE_MAX] = 5;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__DARTS;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 58; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 58;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;

case WEAPONS.__PISTOPHONE:
    _arr[W_PR.__BUTTON_STATE] = 0; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = ceil(.1 * room_speed);
    _arr[W_PR.__SCORE_SIZE] = 9;
    _arr[W_PR.__BULLETS_PER_SHOT] = 1;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__BULLET;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 1;
    _arr[W_PR.__PROJECTILE_SPEED] = 11;
    _arr[W_PR.__RELOAD_TIME] = round(2.5 * room_speed);
    _arr[W_PR.__DAMAGE_MIN] = 30;
    _arr[W_PR.__DAMAGE_MAX] = 50;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__BULLET;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 35; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 35;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;
    
case WEAPONS.__STALK:
    _arr[W_PR.__BUTTON_STATE] = 1; // 0 - pressed, 1 - pressed const, 2 - released
    _arr[W_PR.__SPRAY_ANGLE] = 3;
    _arr[W_PR.__SHOOT_CD] = ceil(.3 * room_speed);
    _arr[W_PR.__SCORE_SIZE] = 200;
    _arr[W_PR.__BULLETS_PER_SHOT] = 50;
    _arr[W_PR.__PROJECTILE] = PROJECTILE.__LASER_BLUE;
    _arr[W_PR.__PROJECTILE_AMOUNT] = 3;
    _arr[W_PR.__PROJECTILE_SPEED] = 0;
    _arr[W_PR.__RELOAD_TIME] = 2.5 * room_speed;
    _arr[W_PR.__DAMAGE_MIN] = 40;
    _arr[W_PR.__DAMAGE_MAX] = 60;
    _arr[W_PR.__BULLET_TYPE] = AMMO.__ENERGY;
    _arr[W_PR.__CRIT_CHANCE] = 0;
    _arr[W_PR.__LDIR_X] = 36; // 4 29 64 20
    _arr[W_PR.__LDIR_Y] = 36;
    _arr[W_PR.__LDIR_DIR] = 1;
    break;   
}

return _arr;
