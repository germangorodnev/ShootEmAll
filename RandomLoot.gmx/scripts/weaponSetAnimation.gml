///weaponSetAnimation(WEAPONS.__ apply to weaponObj, WEAPON_STATES.__)
// random anim
var st = argument[1];
switch (st)
{
case WEAPON_STATES.__MELEE_DOWN:
    animIndex = animIndexNext mod animCnt;
    switch (argument[0])
    {
    case WEAPONS.__ARIA_ARTH:
        returnTmrCnt = 0.5 * room_speed;
        angleNeed = angleNeedDown[animIndex] * sign(xsc);
        angleBegin = image_angle;
        break;
    case WEAPONS.__BLOOD_FLAG:
        returnTmrCnt = 0.5 * room_speed;
        angleNeed = angleNeedDown[animIndex] * sign(xsc);
        angleBegin = image_angle;
        break;
        
    default:
        returnTmrCnt = 0;
        animIndex = 0;
        angleNeed = angleNeedDown[animIndex] * sign(xsc);
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
}

