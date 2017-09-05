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
        canAttackTmr = max(1, round(parent.shootcd * random_range(.8, 1.1))); 
                
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
        angleNeed = -image_angle;
        angleRot = angleRotDown[0];
        angleBegin = image_angle;
        
        canAttack = 0;
        canAttackTmr = parent.shootcd; 
                
        sprite_index = parent.weaponSprite[1];
        anImageSpeed = parent.weaponAnimSpeed[0];
        break;
        
    case WEAPON_STATES.__MELEE_UP:
        angleNeed = angleNeedUp;
        angleRot = angleRotUp;
        
        sprite_index = parent.weaponSprite[2];
        anImageSpeed = parent.weaponAnimSpeed[2];
        break;
    }
    anImageNumber = sprite_get_number(sprite_index);
}


