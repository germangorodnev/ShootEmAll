///weaponSetAnimation(WEAPONS.__ apply to weaponObj, WEAPON_STATES.__)
// random anim
var st = argument[1];
switch (st)
{
case WEAPON_STATES.__MELEE_DOWN:
    switch (argument[0])
    {
    case WEAPONS.__ARIA_ARTH:
        returnTmrCnt = 0.3 * room_speed;
        angleNeed = image_angle;
        while (angleNeed == median(image_angle - 15, angleNeed, image_angle + 15))
        {
            switch (choose(0, 1))
            {
            case 0:
                angleNeedDown = -95;//sAriaArthef
                anOffXNeed = 12; anOffXSpd = 1.5;
                anOffYNeed = -20; anOffYSpd = 2.5;
                angleNeed = angleNeedDown * sign(image_xscale); //(90 - angleNeedDown) * (image_xscale < 0); 
                angleRot = 25;
                angleBegin = image_angle;
                break;
            case 1:
                angleNeedDown = -140; 
                anOffXNeed = -1; anOffXSpd = 1.5;
                anOffYNeed = -1; anOffYSpd = 2.5;       
                angleNeed = angleNeedDown * sign(image_xscale); //(90 - angleNeedDown) * (image_xscale < 0); //+ 180 * (image_xscale < 0) + angleNeedDown * -1 * (image_xscale < 0);
                angleRot = 25;
                angleBegin = image_angle;
                break;      
            }
        }
        break;
    case WEAPONS.__BLOOD_FLAG:
        returnTmrCnt = 0.3 * room_speed;
        angleNeed = image_angle;
        while (angleNeed == median(image_angle - 3, angleNeed, image_angle + 3))
        {
            switch (choose(0, 1))
            {
            case 0:
                angleNeedDown = -10;
                anOffXNeed = 0; anOffXSpd = 1.5;
                anOffYNeed = 0; anOffYSpd = 2.5;
                angleNeed = angleNeedDown * sign(image_xscale); //(90 - angleNeedDown) * (image_xscale < 0); 
                angleRot = 25;
                angleBegin = image_angle;
                break;
            case 1:
                angleNeedDown = -100; 
                anOffXNeed = 0; anOffXSpd = 1.5;
                anOffYNeed = 0; anOffYSpd = 2.5;       
                angleNeed = angleNeedDown * sign(image_xscale); //(90 - angleNeedDown) * (image_xscale < 0); //+ 180 * (image_xscale < 0) + angleNeedDown * -1 * (image_xscale < 0);
                angleRot = 25;
                angleBegin = image_angle;
                break;      
            }
        }
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

