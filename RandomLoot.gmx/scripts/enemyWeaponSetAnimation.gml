///enemyWeaponSetAnimation(WEAPONS.__, WEAPON_STATES.__)
// random anim
var st = argument[1];
switch (st)
{
case WEAPON_STATES.__MELEE_DOWN:
    switch (argument[0])
    {
    default:
        animIndex = 0;
        angleNeed = angleNeedDown[0] * sign(xsc);
        angleBegin = image_angle;    
        break;
    }
    break;
    
case WEAPON_STATES.__MELEE_UP:
    switch (argument[0])
    {
    default: 
        break;
    }
    break;
    
case WEAPON_STATES.__MELEE_FORW:
    switch (argument[0])
    {
    case WEAPONS.__KNIFE:
        returnTmrCnt = 0.5 * room_speed;
        angleNeed = angleNeedDown[animIndex];
        angleBegin = 0;
        angleRot = angleRotDown[animIndex];
        break;
    }
    break;
}

