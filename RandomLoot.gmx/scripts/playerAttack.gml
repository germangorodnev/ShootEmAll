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
    case WEAPONS.__BLOOD_FLAG:  
        with (weaponObj)
            weaponSetAnimation(WEAPONS.__BLOOD_FLAG, WEAPON_STATES.__MELEE_DOWN);

        playerWeaponSetState(WEAPON_STATES.__MELEE_DOWN);    

        maskKickAdd(kx1, ky1, kx2, ky2, 0, 1);
        maskKick.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]); 
        maskKick.dmgcd = weaponCd;
        //maskKick.image_angle = mousedir;
        break;
        
    case WEAPONS.__ARIA_ARTH:
        with (weaponObj)
            weaponSetAnimation(playerId.weapon, WEAPON_STATES.__MELEE_DOWN);
        
        playerWeaponSetState(WEAPON_STATES.__MELEE_DOWN);
            
        var wzhuh = meleeWzhuhCreate(x + lengthdir_x(4, mousedir), y + lengthdir_y(4, mousedir), 0);
        wzhuh.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]); 
        wzhuh.dmgcd = weaponCd;
        wzhuh.image_angle = mousedir;
        with (wzhuh)
        {
            meleeWzhuhActivate(5);
        }
        if (argument[0] == 1)
            if (irandom(100) <= 20)
                playerWeaponSetKickCount(2);
        break;
        
    case WEAPONS.__COPPER_DEVIL:
        with (weaponObj)
            weaponSetAnimation(playerId.weapon, WEAPON_STATES.__MELEE_DOWN);
        
        playerWeaponSetState(WEAPON_STATES.__MELEE_DOWN);
            
        var wzhuh = meleeWzhuhCreate(x + lengthdir_x(4, mousedir), y + lengthdir_y(4, mousedir), 0);
        var _min = W_PR.__ME_DAMAGE_MIN,
            _max = W_PR.__ME_DAMAGE_MAX;
        if (weaponObj.hitCount % 3 == 0) // crit
        {
            _min = W_PR.__ME_CRIT_DAMAGE_MIN;
            _max = W_PR.__ME_CRIT_DAMAGE_MAX;
        }
        wzhuh.dmg = irandom_range(weaponInf[_min], weaponInf[_max]); 
        wzhuh.dmgcd = weaponCd;
        wzhuh.image_angle = mousedir;
        with (wzhuh)
        {
            meleeWzhuhActivate(5);
        }
        break;
        
    case WEAPONS.__HALFSWORD:
        with (weaponObj)
            weaponSetAnimation(playerId.weapon, WEAPON_STATES.__MELEE_DOWN);
        
        playerWeaponSetState(WEAPON_STATES.__MELEE_DOWN);
            
        var wzhuh = meleeWzhuhCreate(x + lengthdir_x(4, mousedir), y + lengthdir_y(4, mousedir), 0);
        wzhuh.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]) * choose(0, 1); 
        wzhuh.dmgcd = weaponCd;
        wzhuh.image_angle = mousedir;
        with (wzhuh)
        {
            meleeWzhuhActivate(5);
        }
        break;
        
    case WEAPONS.__KNIFE:
        with (weaponObj)
            weaponSetAnimation(playerId.weapon, WEAPON_STATES.__MELEE_FORW);   
                         
        playerWeaponSetState(WEAPON_STATES.__MELEE_FORW);

        var wzhuh = meleeWzhuhCreate(weaponObj.x + lengthdir_x(4, mousedir), weaponObj.y + lengthdir_y(4, mousedir), 
            0, 1, 1, 3, 8);
        wzhuh.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]); 
        wzhuh.dmgcd = weaponCd;
        wzhuh.image_angle = mousedir;
        with (wzhuh)
        {
            meleeWzhuhActivate(5);
        }
        break;
                
    default: // just common melee weapon
        with (weaponObj)
            weaponSetAnimation(playerId.weapon, WEAPON_STATES.__MELEE_DOWN);
        
        playerWeaponSetState(WEAPON_STATES.__MELEE_DOWN);
            
        var wzhuh = meleeWzhuhCreate(x + lengthdir_x(4, mousedir), y + lengthdir_y(4, mousedir), 0);
        wzhuh.dmg = irandom_range(weaponInf[W_PR.__ME_DAMAGE_MIN], weaponInf[W_PR.__ME_DAMAGE_MAX]); 
        wzhuh.dmgcd = weaponCd;
        wzhuh.image_angle = mousedir;
        with (wzhuh)
        {
            meleeWzhuhActivate(5);
        }
        break;
    }
    break;
    
/* ******************************************************** RANGE ***********************************************************/    
case WEAPON_TYPE.__RANGE:
    // create some bulleetz
    switch (weapon)
    {        
    // line projectile
    case WEAPONS.__FOREST_MANTIS:
    case WEAPONS.__LASER_BEE:
    case WEAPONS.__OVERKILLINGTON:
    case WEAPONS.__STALK:
        repeat (weaponInf[W_PR.__PROJECTILE_AMOUNT])
        {
            // laser
            var bullet = gameGetProjectileNameByIndex(weaponInf[W_PR.__PROJECTILE]),
                xx = weaponObj.x + lengthdir_x(weaponInf[W_PR.__LDIR_X], weaponObj.image_angle + weaponInf[W_PR.__LDIR_DIR]),
                yy = weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], weaponObj.image_angle - weaponInf[W_PR.__LDIR_DIR] * sign(weaponObj.image_yscale));
            var bb = instance_create(xx, yy, bullet);
            // no crit
            bb.damage = irandom_range(weaponInf[W_PR.__DAMAGE_MIN], weaponInf[W_PR.__DAMAGE_MAX]);   
            bb.direction = mousedir + irandom(weaponInf[W_PR.__SPRAY_ANGLE]) * choose(-1, 1);    //point_direction(weaponObj.x, weaponObj.y, weaponObjx, mouse_y)   
            bb.parent = id;  
            bb.dmgcd = weaponCd;
            bb.liveTmr = lasLong;
            with (bb)
            {
                laserFindCollisionPoint(LEVEL.WALL);
                projectileInited(); 
            }         
            playerControlledLineAdd(bb);
        }
        break;
        
    // zap
    case WEAPONS.__TESLA_BOOM:
        // get all enemies in list
        var enls = objectsInCircle(x, y, 200, oBaseEnemy);
        var dd = irandom_range(weaponInf[W_PR.__DAMAGE_MIN], weaponInf[W_PR.__DAMAGE_MAX]),
            cc = CUCKED.__NORMAL,
            pac = id,
            ddcd = weaponCd,
        repeat (min(5, ds_list_size(enls)))
        {
            var pp = irandom(ds_list_size(enls) - 1);
            var enemy = enls[| pp];        
            ds_list_delete(enls, pp);    
            if (!enemy.hittable)
                continue;
            with (enemy.maskHit)
            {
                maskTryGetDmg(pac, dd, cc, ddcd);
            }
            var xx = weaponObj.x + lengthdir_x(weaponInf[W_PR.__LDIR_X], weaponObj.image_angle + weaponInf[W_PR.__LDIR_DIR]),
                yy = weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], weaponObj.image_angle - weaponInf[W_PR.__LDIR_DIR] * sign(weaponObj.image_yscale));
            var bb = instance_create(xx, yy, oZap);
            bb.eX = enemy.x + irandom_range(-10, 10);
            bb.eY = enemy.y - irandom_range(5, enemy.sprite_height / 1.5);
            bb.liveTmr = lasLong;
            with (bb)
            {
                zapInit();
            }         
            playerControlledLineAdd(bb);  
        } 
        ds_list_destroy(enls); 
        break;
        
    // chainsawer
    // x1 - 34
    // x2 - 67
    case WEAPONS.__STEEL_RUFF:
        var bullet = gameGetProjectileNameByIndex(weaponInf[W_PR.__PROJECTILE]);
        var xx = weaponObj.x + lengthdir_x(34, weaponObj.image_angle),
            yy = weaponObj.y + lengthdir_y(34, weaponObj.image_angle),
            critch = weaponInf[W_PR.__CRIT_CHANCE];

        var bb = instance_create(xx, yy, bullet);
        bb.damage = irandom_range(weaponInf[W_PR.__DAMAGE_MIN], weaponInf[W_PR.__DAMAGE_MAX]);   
        bb.direction = mousedir + irandom(weaponInf[W_PR.__SPRAY_ANGLE]) * choose(-1, 1);    //point_direction(weaponObj.x, weaponObj.y, weaponObjx, mouse_y)   
        bb.speed = weaponInf[W_PR.__PROJECTILE_SPEED]; 
        bb.parent = id;  
        bb.dmgcd = weaponCd;
        with (bb)
            projectileInited(); 
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
            var adddir = 0;
            if (weapon == WEAPONS.__DESTRUCTOR)
                addir = 5 * weaponObj.hitCount;
            bb.direction = mousedir + irandom(weaponInf[W_PR.__SPRAY_ANGLE]) * choose(-1, 1);    //point_direction(weaponObj.x, weaponObj.y, weaponObjx, mouse_y)   
            bb.speed = weaponInf[W_PR.__PROJECTILE_SPEED]; 
            bb.parent = id;  
            bb.dmgcd = weaponCd;
            if (weapon == WEAPONS.__GRENADE_LAUNCHER
                || weapon == WEAPONS.__PHASER)
            {
                bb.radius = expRad;
            }
            with (bb)
                projectileInited();      
        }
        break;
    }
    
    // decrease the bullets
    if (!(SPECIAL_FLAGS & SPECIAL.__INF_AMMO))
        weaponAmmo -= weaponInf[W_PR.__BULLETS_PER_SHOT];
    playerWeaponSetState(WEAPON_STATES.__RANGE_SHOT);
    // recoil if any
    if (recoilSpd != 0)
        recoilApply = 1;
    // create shells on floor
    repeat(weaponInf[W_PR.__BULLETS_PER_SHOT])
        gameShellCreate(x + irandom_range(-4, 4), y + irandom_range(-3, 3), weaponInf[W_PR.__BULLET_TYPE]);
    // music maybe
    if (attackSoundsCnt > 0)
        soundPlay(attackSounds[irandom(attackSoundsCnt-1)], 100, 0);
    break;
}   
// shake'em baby
camShake(8, 7, 3);

