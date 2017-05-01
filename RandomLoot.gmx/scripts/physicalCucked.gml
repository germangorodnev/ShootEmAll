///physicalCucked(CUCKED.__ type, cucker)
//SWITCH ADD
switch (argument[0])
{
case CUCKED.__NORMAL:
    switch (object_index)
    {
    case oPlayer:
        cuckTmr = cuckTmrCnt;
        break;
        
    case oBuddyTest:
        anMaxAngle = min(45, anMaxAngle + 6);
        break;
    
    case oPillow:
        enemySetState(ENEMY_STATE.__CUCKED);
        break;
    }
    break;

    
case CUCKED.__HARD:

    break;

}
