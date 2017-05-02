switch (weaponType)
{
/* ******************************************************** MELEE ***********************************************************/    
case WEAPON_TYPE.__MELEE:
    switch (weapon)
    {
    case WEAPONS.__CUSTOM:
        break;
        
    case WEAPONS.__BLOOD_FLAG:  
        with (weaponObj)
            weaponSetAnimation(WEAPONS.__BLOOD_FLAG, WEAPON_STATES.__MELEE_DOWN);

        playerWeaponSetState(WEAPON_STATES.__MELEE_DOWN);    

        maskKickAdd(kx1, ky1, kx2, ky2, 0, 1);
        maskKick.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]); 
        maskKick.dmgcd = weaponCd;
        break;
        
    case WEAPONS.__ARIA_ARTH:
        with (weaponObj)
            weaponSetAnimation(WEAPONS.__ARIA_ARTH, WEAPON_STATES.__MELEE_DOWN);

        playerWeaponSetState(choose(WEAPON_STATES.__MELEE_DOWN));
             
        maskKickAdd(kx1, ky1, kx2, ky2, 0, 1);
        maskKick.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]); 
        maskKick.dmgcd = weaponCd;
        // random double shot
        if (choose(0, 1))
            playerWeaponSetKickCount(2);  
        break;
        
    default: // just common melee weapon
        with (weaponObj)
            weaponSetAnimation(oPlayer.weapon, WEAPON_STATES.__MELEE_DOWN);
        
        playerWeaponSetState(WEAPON_STATES.__MELEE_DOWN);
            
        maskKickAdd(kx1, ky1, kx2, ky2, 0, 1);
        maskKick.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]); 
        maskKick.dmgcd = weaponCd;
        break;
    }
    break;
    
/* ******************************************************** RANGE ***********************************************************/    
case WEAPON_TYPE.__RANGE:
    // create some bulleetz
    switch (weapon)
    {
    case WEAPONS.__CUSTOM:
        break;
        
    default:
        // just by params
        var bullet = gameGetProjectileNameByIndex(weaponInf[W_PR.__PROJECTILE]),
            xx = weaponObj.x + lengthdir_x(weaponInf[W_PR.__LDIR_X], weaponObj.image_angle + weaponInf[W_PR.__LDIR_DIR]),
            yy = weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], weaponObj.image_angle - weaponInf[W_PR.__LDIR_DIR] * sign(weaponObj.image_yscale)),
            critch = weaponInf[W_PR.__CRIT_CHANCE];
        repeat (weaponInf[W_PR.__PROJECTILE_AMOUNT])
        {
            var bb = instance_create(xx, yy, bullet);
            if (irandom_range(0, 100) < critch)
            {
                // crit
                bb.damage = irandom_range(weaponInf[W_PR.__CRIT_DAMAGE_MIN], weaponInf[W_PR.__CRIT_DAMAGE_MAX]);   
            }
            else
            {
                // no crit
                bb.damage = irandom_range(weaponInf[W_PR.__DAMAGE_MIN], weaponInf[W_PR.__DAMAGE_MAX]);   
            }
            bb.direction = mousedir + irandom(weaponInf[W_PR.__SPRAY_ANGLE]);    //point_direction(weaponObj.x, weaponObj.y, weaponObjx, mouse_y)   
            bb.speed = weaponInf[W_PR.__PROJECTILE_SPEED]; 
            bb.parent = id;  
            bb.dmgcd = weaponCd;
            with (bb)
                projectileInited();      
        }
        break;
    }
    // decrease the bullets
    weaponAmmo -= weaponInf[W_PR.__BULLETS_PER_SHOT];
    playerWeaponSetState(WEAPON_STATES.__RANGE_SHOT);
    // recoil if any
    if (recoilSpd != 0)
        recoilApply = 1;
    break;
}   

