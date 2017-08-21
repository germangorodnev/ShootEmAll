///enemySetState(ENEMY_STATE.__)
state = argument[0];
hittable = 1;
idleTmr = 0;
patrolTmr = 0;
animEnded = 0;
pathEnd = 0;

switch (state)
{
case ENEMY_STATE.__IDLE:
    procedureAnimableReset();
    customAnimableSetSprite(anims[ENEMY_ANIM.__IDLE], animSpd[ENEMY_ANIM.__IDLE]);
    path_end();
    speed = 0;
    break;
    
case ENEMY_STATE.__WALK:
    customAnimableSetSprite(anims[ENEMY_ANIM.__WALK], animSpd[ENEMY_ANIM.__WALK]);
    break;
case ENEMY_STATE.__ATTACK:
    customAnimableSetSprite(anims[ENEMY_ANIM.__ATTACK], animSpd[ENEMY_ANIM.__ATTACK]);
    break;
    
case ENEMY_STATE.__FOLLOW:
    customAnimableSetSprite(anims[ENEMY_ANIM.__WALK], animSpd[ENEMY_ANIM.__WALK]);
    break;  
    
case ENEMY_STATE.__CUCKED:
    customAnimableSetSprite(anims[ENEMY_ANIM.__CUCKED], animSpd[ENEMY_ANIM.__CUCKED]);
    cuckTmr = cuckTmrCnt;
    physicalBeginStep();
    break;
    
case ENEMY_STATE.__RETREAT:
    customAnimableSetSprite(anims[ENEMY_ANIM.__WALK], animSpd[ENEMY_ANIM.__WALK]);
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
