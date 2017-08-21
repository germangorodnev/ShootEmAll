///enemyStartPattern(ENEMY_PATTERN.__)
pattern = argument[0];

//SWITCH ADD
switch (pattern)
{
case ENEMY_PATTERN.__PATROL:
    enemySetState(ENEMY_STATE.__WALK);
    mX = x + irandom(100) * choose(-1, 1);    
    mY = y + irandom(100) * choose(-1, 1); 
    patrolTmr = round(random_range(2, 3) * room_speed + random(30));
    if (get_timer() % 4 == 0)
    {
        if (xsc > 0)
            angle = irandom(151) - 80;
        else
            angle = irandom_range(115, 260);
    }
    //} until (!place_meeting(mX, mY, oSolidObject)); 
    break;
    
case ENEMY_PATTERN.__FOLLOW:
    target = argument[1];
    enemySetState(ENEMY_STATE.__FOLLOW);
    mp_grid_path(oLevel.levelPf, path, x, y, target.x, target.y, 1);
    enemyGetNextPathPoint();
    break;
    
case ENEMY_PATTERN.__RETREAT:
    enemySetState(ENEMY_STATE.__RETREAT);
    mX = -1;
    mY = -1;
    var flag = 1;
    while (flag)
    {   
        switch (flag)
        {
        case 1:
            // player -- back
            var pdir = point_direction(x, y, target.x, target.y);
            mp_grid_path(oLevel.levelPf, path, x, y, 
                target.x + lengthdir_x(200, pdir),
                target.y + lengthdir_y(200, pdir),
                1);
            enemyGetNextPathPoint();
            flag = 0;
            break;
        }
    }   
    break;  
}
