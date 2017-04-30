///enemySetState(ENEMY_STATE.__)
state = argument[0];

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
    
case ENEMY_STATE.__CUCKED:
    sprite_index = anims[ENEMY_ANIM.__CUCKED];
    cuckTmr = cuckTmrCnt;
    physicalBeginStep();
    break;
    
case ENEMY_STATE.__DIE:
    instance_destroy();
    break;
}
