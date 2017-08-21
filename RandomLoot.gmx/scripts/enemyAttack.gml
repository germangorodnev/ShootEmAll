switch (weaponType)
{
/* ******************************************************** MELEE ***********************************************************/    
case WEAPON_TYPE.__MELEE:
    switch (weapon)
    {
    // melee
    case ENEMY_WEAPON.__SELF:
        path_end();
        speed = 0;
        enemySetState(ENEMY_STATE.__ATTACK);
        maskKickAdd(kx1, ky1, kx2, ky2, 1, 1);
        maskKick.dmg = irandom_range(mindmg, maxdmg); 
        canAttack = 0;
        canAttackTmr = canAttackCd;
        break;
    }
    break;
    
/* ******************************************************** RANGE ***********************************************************/    
case WEAPON_TYPE.__RANGE:
    // create some bulleetz
    switch (weapon)
    {
    case ENEMY_WEAPON.__OCTO_RIFLE:
        for (var i = 0, timer = 0.08 * room_speed; i < 5; i++)
        {
            var bullet = gameGetProjectileNameByIndex(projectile),
                xx = weaponObj.x + lengthdir_x(ldirx, weaponObj.image_angle + ldirdir),
                yy = weaponObj.y + lengthdir_y(ldiry, weaponObj.image_angle + ldirdir * sign(weaponObj.image_yscale));
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
            bb.prt = timer * i;
            with (bb)
                projectileInited();      
        }
        break;
        
    default:
        // just by params
        var bullet = gameGetProjectileNameByIndex(projectile),
            xx = weaponObj.x + lengthdir_x(ldirx, weaponObj.image_angle + ldirdir),
            yy = weaponObj.y + lengthdir_y(ldiry, weaponObj.image_angle + ldirdir * sign(weaponObj.image_yscale));
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
            //bb.prt = 1;
            with (bb)
                projectileInited();      
        }
        break;
    }
    enemyWeaponSetState(WEAPON_STATES.__RANGE_SHOT);
    break;
}   

