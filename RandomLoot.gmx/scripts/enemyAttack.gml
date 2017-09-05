switch (weaponType)
{
/* ******************************************************** MELEE ***********************************************************/    
case WEAPON_TYPE.__MELEE:
    switch (weapon)
    {
    // melee
    case ENEMY_WEAPON.__SELF:
        speed = 0;
        enemySetState(ENEMY_STATE.__ATTACK);
        maskKickAdd(kx1, ky1, kx2, ky2, 1, 1);
        maskKick.dmg = irandom_range(mindmg, maxdmg); 
        canAttack = 0;
        canAttackTmr = canAttackCd;
        break;
    default:
    //case ENEMY_WEAPON.__OCTO_CLUB:
        var ww = weapon;
        //with (weaponObj)
        //    enemyWeaponSetAnimation(ww, WEAPON_STATES.__MELEE_DOWN);
        enemyWeaponSetState(WEAPON_STATES.__MELEE_DOWN);
        var wzhuh = meleeWzhuhCreate(x + lengthdir_x(4, angle), y + lengthdir_y(4, angle), 1, 0, maskScale);
        wzhuh.dmg = irandom_range(mindmg, maxdmg); 
        wzhuh.dmgcd = dmgcd;
        wzhuh.image_angle = angle;
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
    /* ******************* R O C K E R ******************* */
    case ENEMY_WEAPON.__ROCKER_MOLOTOV:
        var xx = weaponObj.x + lengthdir_x(ldirx, weaponObj.image_angle + ldirdir),
            yy = weaponObj.y + lengthdir_y(ldirx, weaponObj.image_angle + ldirdir * sign(weaponObj.image_yscale));
        var bb = instance_create(xx, yy, oRockerMolotov);
        bb.xx = target.x + irandom(30) * choose(-1, 1);
        bb.yy = target.y + irandom(10) * choose(-1, 1);
        bb.damage = irandom_range(mindmg, maxdmg);   
        bb.direction = point_direction(bb.x, bb.y, bb.xx, bb.yy);       
        bb.parent = id; 
        bb.group = maskHit.group;
        bb.dmgcd = dmgcd;
        with (bb)
            projectileInited();      
        break;
    /* ******************** O C T O P U S  ATTACKER ******************* */
    case ENEMY_WEAPON.__OCTO_RIFLE:
        for (var i = 0, timer = 0.08 * room_speed; i < 5; i++)
        {
            var bullet = gameGetProjectileNameByIndex(projectile),
                xx = weaponObj.x + lengthdir_x(ldirx, weaponObj.image_angle + ldirdir),
                yy = weaponObj.y + lengthdir_y(ldirx, weaponObj.image_angle + ldirdir * sign(weaponObj.image_yscale));
            var bb = instance_create(xx, yy, bullet);
            if (irandom_range(0, 100) < critchance)
            {
                // crit
                bb.damage = irandom_range(critmindmg, critmaxdmg);   
            }
            else
            {
                // no crit
                bb.damage = irandom_range(mindmg, maxdmg);   
            }
            bb.direction = angle + irandom(sprayAngle);       
            bb.spd = projectileSpeed;  
            bb.parent = id; 
            bb.group = maskHit.group;
            bb.prt = timer * i;
            bb.dmgcd = dmgcd;
            with (bb)
                projectileInited();      
        }
        break;
    /* ******************** O C T O P U S  HEALER ******************* */
    case ENEMY_WEAPON.__OCTO_HEAL:
        var xx = weaponObj.x + lengthdir_x(ldirx, weaponObj.image_angle + ldirdir),
            yy = weaponObj.y + lengthdir_y(ldirx, weaponObj.image_angle + ldirdir * sign(weaponObj.image_yscale));
        var bb = instance_create(xx, yy, oZap);
        bb.eX = target.x + irandom_range(-10, 10);
        bb.eY = target.y - irandom_range(5, target.sprite_height / 1.5);
        bb.liveTmr = 3;
        bb.damage = 0;
        bb.group = maskHit.group;
        bb.parent = id;
        bb.col = make_colour_rgb(49, 187, 60);
        with (target)
        {
            hp += 2;
        }
        with (bb)
        {
            zapInit();
        }             
        break;
        
    default:
        // just by params
        var bullet = gameGetProjectileNameByIndex(projectile),
            xx = weaponObj.x + lengthdir_x(ldirx, weaponObj.image_angle + ldirdir),
            yy = weaponObj.y + lengthdir_y(ldirx, weaponObj.image_angle + ldirdir * sign(weaponObj.image_yscale));
        repeat (projectileAmount)
        {
            var bb = instance_create(xx, yy, bullet);
            if (irandom_range(0, 100) < critchance)
            {
                // crit
                bb.damage = irandom_range(critmindmg, critmaxdmg);   
            }
            else
            {
                // no crit
                bb.damage = irandom_range(mindmg, maxdmg);   
            }
            bb.direction = angle + irandom(sprayAngle) * choose(-1, 1);       
            bb.spd = projectileSpeed;  
            bb.parent = id; 
            bb.group = maskHit.group;
            bb.dmgcd = dmgcd;
            bb.prt = 1;
            with (bb)
                projectileInited();      
        }
        break;
    }
    enemyWeaponSetState(WEAPON_STATES.__RANGE_SHOT);
    if (weapon == ENEMY_WEAPON.__ROCKER_MINIGUN)
    {   
        weaponObj.canAttackTmr = shootcd;
    }
    break;
}   

