///enemyStartPattern(ENEMY_PATTERN.__)
pattern = argument[0];
//SWITCH ADD
switch (pattern)
{
case ENEMY_PATTERN.__PATROL:
    enemySetState(ENEMY_STATE.__WALK);

        mX = x + irandom(100) * choose(-1, 1);    
        mY = y + irandom(100) * choose(-1, 1);    
    //} until (!place_meeting(mX, mY, oSolidObject)); 
    break;
}
