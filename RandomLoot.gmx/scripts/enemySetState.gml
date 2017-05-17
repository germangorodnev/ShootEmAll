///enemySetState(ENEMY_STATE.__)
state = argument[0];
hittable = 1;
idleTmr = 0;

switch (state)
{
case ENEMY_STATE.__IDLE:
    procedureAnimableReset();
    sprite_index = anims[ENEMY_ANIM.__IDLE];

    break;
case ENEMY_STATE.__WALK:
    sprite_index = anims[ENEMY_ANIM.__WALK];

    break;
case ENEMY_STATE.__ATTACK:

    break;
    
case ENEMY_STATE.__FOLLOW:
    if (instance_exists(target))
    {
        mX = target.x; 
        mY = target.y;   
    }
    else
    {
        target = noone;
        enemyStartPattern(ENEMY_PATTERN.__PATROL);
    }   
    break;  
    
case ENEMY_STATE.__CUCKED:
    sprite_index = anims[ENEMY_ANIM.__CUCKED];
    cuckTmr = cuckTmrCnt;
    physicalBeginStep();
    break;
    
case ENEMY_STATE.__DIE:
    hittable = 0;
    enemyCreateJibs();
    destrTmr = 1.5 * room_speed;
    //instance_destroy();
    break;
}
