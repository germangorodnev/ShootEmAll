///playerSetState(PLAYER_STATES.__...)
state = argument0;
damagable = 1;
cuckTmr = -1;


switch (state)
{
case PLAYER_STATES.__IDLE:
    procedureAnimableReset();
    break;

    
case PLAYER_STATES.__CUCKED:
    image_index = 2;
    cuckTmr = cuckTmrCnt;
    physicalClearMaskKick();
    break;
    
case PLAYER_STATES.__DASH:
    procedureAnimableReset();
    mD = point_direction(x, y, mouse_x, mouse_y);
    mX = x + lengthdir_x(abilsParams[0], mD);
    mY = y + lengthdir_y(abilsParams[0], mD);
    break;

}
