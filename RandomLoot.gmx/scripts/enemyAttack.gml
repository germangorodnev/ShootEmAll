switch (weaponType)
{
/* ******************************************************** MELEE ***********************************************************/    
case WEAPON_TYPE.__MELEE:
    switch (weapon)
    {
    // melee
    case ENEMY_WEAPON.__SELF:
        break;
    
    }
    break;
    
/* ******************************************************** RANGE ***********************************************************/    
case WEAPON_TYPE.__RANGE:
    // create some bulleetz
    weaponObj.image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
    switch (weapon)
    {
    case WEAPONS.__CUSTOM:
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
            bb.direction = angle + irandom(sprayAngle);       
            bb.speed = projectileSpeed;   
            with (bb)
                projectileInited();      
        }
        break;
    }
    // decrease the bullets
    enemyWeaponSetState(WEAPON_STATES.__RANGE_SHOT);
    break;
}   

