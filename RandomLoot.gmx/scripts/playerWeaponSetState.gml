///playerWeaponSetState(WEAPON_STATES.__)
with (weaponObj)
{
    state = argument[0];
    animEnded = 0;
    anImageIndex = 0;
    if (oPlayer.weapon == WEAPONS.__NONE)
    {
        sprite_index = -1;
        anImageSpeed = 0;
        exit;
    }
    //SWITCH ADD WEAPON_STATES  
    switch (state)
    {
    case WEAPON_STATES.__MOVE:
        attackCount = 0; // warning
        animIndex = 0;
        animIndexNext = 0;
        sprite_index = oPlayer.weaponSprite[0];
        anImageSpeed = oPlayer.weaponAnimSpeed[0];
        with (oPlayer)
            physicalClearMaskKick();
        break;
        
        
        
        
    case WEAPON_STATES.__RANGE_SHOT:
        if (oPlayer.weaponAmmo < oPlayer.weaponInf[W_PR.__BULLETS_PER_SHOT])
        {
            canAttackTmr = -1;
        }
        else
        {
            canAttack = 0;
            canAttackTmr = oPlayer.weaponInf[W_PR.__SHOOT_CD];
        }
        
        sprite_index = oPlayer.weaponSprite[1];
        anImageSpeed = oPlayer.weaponAnimSpeed[1];
        break;
    case WEAPON_STATES.__RANGE_RECOIL:
        sprite_index = oPlayer.weaponSprite[2];
        anImageSpeed = oPlayer.weaponAnimSpeed[2];
        break;
        
    case WEAPON_STATES.__RANGE_RELOAD:
        hitCount = 0;
        var sprRel = oPlayer.weaponSprite[3]; 
        if (sprRel != -1) // there is a special one
        {
            sprite_index = sprRel;
            anImageIndex = 0;
            anImageSpeed = oPlayer.weaponAnimSpeed[3];
        }
        else
        {
            sprite_index = oPlayer.weaponSprite[0];
            anImageSpeed = oPlayer.weaponAnimSpeed[3];            
        }
        break;
        
        
        
    case WEAPON_STATES.__MELEE_FORW:
        canAttack = 0;
        canAttackTmr = oPlayer.weaponInf[W_PR.__ME_SHOOT_CD];
        sprite_index = oPlayer.weaponSprite[1];
        anImageSpeed = oPlayer.weaponAnimSpeed[0];
        angleBegin = 0;
        angleNeed = angleNeedDown[animIndex];
        angleRot = angleRotDown[animIndex];
        break;
        
    case WEAPON_STATES.__MELEE_BACKW:
        sprite_index = oPlayer.weaponSprite[1];
        anImageSpeed = oPlayer.weaponAnimSpeed[0];
        angleNeed = 0;
        angleRot = angleRotDown[animIndex];
        break;
        
    case WEAPON_STATES.__MELEE_DOWN:
        canAttack = 0;
        canAttackTmr = oPlayer.weaponInf[W_PR.__ME_SHOOT_CD];

        angleNeed = -image_angle; //+ (90 - angleNeedDown) * (xsc < 0); //+ 180 * (xsc < 0) + angleNeedDown * -1 * (xsc < 0);
        angleRot = angleRotDown[animIndex];
        angleBegin = image_angle;
        
        sprite_index = oPlayer.weaponSprite[1];
        anImageSpeed = oPlayer.weaponAnimSpeed[0];
        break;
        
    case WEAPON_STATES.__MELEE_UP:
        angleNeed = angleNeedUp[animIndex];// + 180 * (xsc < 0) + angleNeedUp * -1 * (xsc < 0);
        angleRot = angleRotUp[animIndex];
        
        sprite_index = oPlayer.weaponSprite[2];
        anImageSpeed = oPlayer.weaponAnimSpeed[2];
        break;
        
    case WEAPON_STATES.__MOVE_NOANIM:
        sprite_index = oPlayer.weaponSprite[0];
        anImageSpeed = oPlayer.weaponAnimSpeed[0];
        break;
        
    case WEAPON_STATES.__RETURN_TO_TOP:
        angleNeed = angleNeedUp[animIndex];
        angleRot = angleRotUp[animIndex];
        break;
    }
    anImageNumber = sprite_get_number(sprite_index);
}


