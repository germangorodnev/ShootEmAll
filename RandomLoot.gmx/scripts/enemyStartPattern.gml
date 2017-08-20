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
    idleTmr = round(random_range(1.5, 3) * room_speed + random(30));
    if (get_timer() % 4 == 0)
        angle = irandom(360);
    //} until (!place_meeting(mX, mY, oSolidObject)); 
    break;
    
case ENEMY_PATTERN.__FOLLOW:
    target = argument[1];
    enemySetState(ENEMY_STATE.__FOLLOW);
    mp_grid_path(oLevel.levelPf, path, x, y, target.x, target.y, 1);
    enemyGetNextPathPoint();
    break;  
}
