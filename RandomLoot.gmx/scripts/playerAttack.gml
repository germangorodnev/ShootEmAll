///playerAttack(bool first attack)
if (argument[0])
    playerWeaponSetKickCount(1);
    
weaponObj.hitCount++;

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
        playerWeaponSetState(choose(WEAPON_STATES.__MELEE_DOWN));
        with (weaponObj)
            weaponSetAnimation(WEAPONS.__ARIA_ARTH, WEAPON_STATES.__MELEE_DOWN);
        //var cc = weaponObj.animIndex;
            
        maskKickAdd(kx1, ky1, kx2, ky2, 0, 1);
        maskKick.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]); 
        maskKick.dmgcd = weaponCd;
        // random double shot
        if (argument[0])
            if (irandom(100) <= 20)
                playerWeaponSetKickCount(2);  
        break;
        
    case WEAPONS.__COPPER_DEVIL:
        with (weaponObj)
            weaponSetAnimation(oPlayer.weapon, WEAPON_STATES.__MELEE_DOWN);
        
        playerWeaponSetState(WEAPON_STATES.__MELEE_DOWN);
            
        maskKickAdd(kx1, ky1, kx2, ky2, 0, 1);
        var _min = W_PR.__ME_DAMAGE_MIN,
            _max = W_PR.__ME_DAMAGE_MAX;
        if (weaponObj.hitCount % 3 == 0) // crit
        {
            _min = W_PR.__ME_CRIT_DAMAGE_MIN;
            _max = W_PR.__ME_CRIT_DAMAGE_MAX;
        }
        maskKick.dmg = irandom_range(weaponInf[_min], weaponInf[_max]); 
        maskKick.dmgcd = weaponCd;
        break;
        
    case WEAPONS.__HALFSWORD:
        with (weaponObj)
            weaponSetAnimation(oPlayer.weapon, WEAPON_STATES.__MELEE_DOWN);
        
        playerWeaponSetState(WEAPON_STATES.__MELEE_DOWN);
            
        maskKickAdd(kx1, ky1, kx2, ky2, 0, 1);
        maskKick.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]) * choose(-1, 1); 
        maskKick.dmgcd = max(2, weaponCd * (maskKick.dmg != 0));
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
            if (weapon == WEAPONS.__GRENADE_LAUNCHER)
                bb.radius = expRad;
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

