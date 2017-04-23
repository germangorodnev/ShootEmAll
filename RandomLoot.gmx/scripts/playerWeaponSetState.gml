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
        sprite_index = oPlayer.weaponSprite[0];
        anImageSpeed = oPlayer.weaponAnimSpeed[0];
        break;
    case WEAPON_STATES.__RANGE_SHOT:
        canAttack = 0;
        canAttackTmr = oPlayer.weaponInf[W_PR.__SHOOT_CD];
        sprite_index = oPlayer.weaponSprite[1];
        anImageSpeed = oPlayer.weaponAnimSpeed[1];
        break;
    case WEAPON_STATES.__RANGE_RECOIL:
        sprite_index = oPlayer.weaponSprite[2];
        anImageSpeed = oPlayer.weaponAnimSpeed[2];
        break;
        
    case WEAPON_STATES.__RANGE_RELOAD:
    
        break;
    }
    anImageNumber = sprite_get_number(sprite_index);
}

