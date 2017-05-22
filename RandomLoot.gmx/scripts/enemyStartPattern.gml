///enemyStartPattern(ENEMY_PATTERN.__)
pattern = argument[0];
path_end(); // warning

//SWITCH ADD
switch (pattern)
{
case ENEMY_PATTERN.__PATROL:
    enemySetState(ENEMY_STATE.__WALK);
    mX = x + irandom(100) * choose(-1, 1);    
    mY = y + irandom(100) * choose(-1, 1);    
    //} until (!place_meeting(mX, mY, oSolidObject)); 
    break;
    
case ENEMY_PATTERN.__FOLLOW:
    target = argument[1];
    enemySetState(ENEMY_STATE.__FOLLOW);
    mp_grid_path(oLevel.levelPf, path, x, y, target.x, target.y, 1);
    path_start(path, spd, 0, 1);
    break;  
}
