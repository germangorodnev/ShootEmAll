///rockerSetState(ENEMY_STATE.__)
state = argument[0];
hittable = 1;
idleTmr = 0;
patrolTmr = 0;
animEnded = 0;
pathEnd = 0;
target = instance_nearest(x, y, oPlayer);

switch (state)
{
case ENEMY_STATE.__IDLE:
    procedureAnimableReset();
    customAnimableSetSprite(anims[ENEMY_ANIM.__IDLE], animSpd[ENEMY_ANIM.__IDLE]);
    speed = 0;
    break;
    
case ENEMY_STATE.__WALK:
    customAnimableSetSprite(anims[ENEMY_ANIM.__WALK], animSpd[ENEMY_ANIM.__WALK]);
    break;
    
case ENEMY_STATE.__FOLLOW:
    customAnimableSetSprite(anims[ENEMY_ANIM.__WALK], animSpd[ENEMY_ANIM.__WALK]);
    break;  
    
case ENEMY_STATE.__CUCKED:
    customAnimableSetSprite(anims[ENEMY_ANIM.__CUCKED], animSpd[ENEMY_ANIM.__CUCKED]);
    cuckTmr = cuckTmrCnt;
    physicalBeginStep();
    break;

case ENEMY_STATE.__ROCKER_MINIGUN_1:
    xsc = 1;
    customAnimableSetSprite(anims[ENEMY_ANIM.__IDLE], animSpd[ENEMY_ANIM.__IDLE]);
    angle = point_direction(x, y, target.x, target.y) + irandom(60) - 30;
    STATE_CHANGE_TMR = 6 * room_speed;
    rockerChangeWeapon(ENEMY_WEAPON.__ROCKER_MINIGUN);
    break; 
    
case ENEMY_STATE.__ROCKER_MINIGUN_2:
    xsc = 1;
    customAnimableSetSprite(anims[ENEMY_ANIM.__IDLE], animSpd[ENEMY_ANIM.__IDLE]);
    _angle = point_direction(x, y, target.x, target.y);
    angle = _angle;
    STATE_CHANGE_TMR = irandom_range(2, 3) * room_speed;
    rockerChangeWeapon(ENEMY_WEAPON.__ROCKER_MINIGUN);
    break; 
           
case ENEMY_STATE.__ROCKER_UZIS_1:
    xsc = 1;
    customAnimableSetSprite(anims[ENEMY_ANIM.__IDLE], animSpd[ENEMY_ANIM.__IDLE]);
    angle = irandom(360);
    STATE_CHANGE_TMR = 3 * room_speed;
    rockerChangeWeapon(ENEMY_WEAPON.__ROCKER_UZI);
    break; 
       
case ENEMY_STATE.__ROCKER_GUITAR_1:
    customAnimableSetSprite(anims[ENEMY_ANIM.__IDLE], animSpd[ENEMY_ANIM.__IDLE]);
    rockerChangeWeapon(ENEMY_WEAPON.__ROCKER_GUITAR);
    xsc = 1;
    rockerStartPattern(ENEMY_PATTERN.__FOLLOW, target);
    STATE_CHANGE_TMR = 8 * room_speed;
    break;    
    
case ENEMY_STATE.__ROCKER_MOLOTOV_1:
    customAnimableSetSprite(anims[ENEMY_ANIM.__IDLE], animSpd[ENEMY_ANIM.__IDLE]);
    rockerChangeWeapon(ENEMY_WEAPON.__ROCKER_MOLOTOV);
    STATE_CHANGE_TMR = irandom_range(1, 3) * room_speed;
    break;

case ENEMY_STATE.__ROCKER_WALL_MINIGUN_1:
    customAnimableSetSprite(anims[ENEMY_ANIM.__WALK], animSpd[ENEMY_ANIM.__WALK]);
    rockerChangeWeapon(ENEMY_WEAPON.__ROCKER_MINIGUN);
    STATE_CHANGE_TMR = irandom_range(8, 12) * room_speed;
    path_clear_points(path);
    path_set_closed(path, 0);
    var rl = oPlayer.roomCtrl,
        xoff = 160,
        yoff = 160;   
    path_add_point(path, rl.x + xoff, rl.y + yoff, 100);
    path_add_point(path, rl.bbox_right - xoff, rl.y + yoff, 100);
    path_add_point(path, rl.bbox_right - xoff, rl.bbox_bottom - yoff, 100);
    path_add_point(path, rl.x + xoff, rl.bbox_bottom - yoff, 100);
    enemyGetNextPathPoint();
    break;
    
case ENEMY_STATE.__DIE:
    customAnimableSetSprite(anims[ENEMY_ANIM.__DIE], animSpd[ENEMY_ANIM.__DIE]);
    hittable = 0;
    path_end();
    enemyCreateJibs();
    destrTmr = 1.5 * room_speed;
    //instance_destroy();
    // create some money
    enemyCreateMoney();
    enemyCreateAmmo();    
    break;
}
