///enemyWeaponSetState(WEAPON_STATES.__)
with (weaponObj)
{
    state = argument[0];
    animEnded = 0;
    anImageIndex = 0;
    if (parent.weapon == WEAPONS.__NONE)
    {
        sprite_index = -1;
        anImageSpeed = 0;
        exit;
    }
    //SWITCH ADD WEAPON_STATES  
    switch (state)
    {
    case WEAPON_STATES.__MOVE:
        sprite_index = parent.weaponSprite[0];
        anImageSpeed = parent.weaponAnimSpeed[0];
        break;
    case WEAPON_STATES.__RANGE_SHOT:
        canAttack = 0;
        canAttackTmr = parent.weaponInf[W_PR.__SHOOT_CD];
        
        sprite_index = parent.weaponSprite[1];
        anImageSpeed = parent.weaponAnimSpeed[1];
        break;
    case WEAPON_STATES.__RANGE_RECOIL:
        sprite_index = parent.weaponSprite[2];
        anImageSpeed = parent.weaponAnimSpeed[2];
        break;
        
    case WEAPON_STATES.__RANGE_RELOAD:
        break;
        
    case WEAPON_STATES.__MELEE_DOWN:
        angleNeed = angleNeedDown + 180 * (image_xscale < 0) + angleNeedDown * -1 * (image_xscale < 0);
        angleRot = angleRotDown;
        angleBegin = image_angle;

        canAttack = 0;
        canAttackTmr = parent.weaponInf[W_PR.__ME_SHOOT_CD];
        
        sprite_index = parent.weaponSprite[1];
        anImageSpeed = parent.weaponAnimSpeed[0];
        break;
        
    case WEAPON_STATES.__MELEE_UP:
        angleNeed = angleNeedUp;;// + 180 * (image_xscale < 0) + angleNeedUp * -1 * (image_xscale < 0);
        angleRot = angleRotUp;
        
        sprite_index = parent.weaponSprite[2];
        anImageSpeed = parent.weaponAnimSpeed[2];
        break;
    }
    anImageNumber = sprite_get_number(sprite_index);
}


