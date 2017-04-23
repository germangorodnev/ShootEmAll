switch (weaponType)
{
/* ******************************************************** MELEE ***********************************************************/    
case WEAPON_TYPE.__MELEE:

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
            yy = weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], weaponObj.image_angle + weaponInf[W_PR.__LDIR_DIR] * sign(weaponObj.image_yscale)),
            critch = weaponInf[W_PR.__CRIT_CHANCE];
        repeat (weaponInf[W_PR.__PROJECTILE_AMOUNT])
        {
            var bb = instance_create(xx, yy, bullet);
            bb.damage = irandom_range(weaponInf[W_PR.__DAMAGE_MIN], weaponInf[W_PR.__DAMAGE_MAX])
                * max(1, 1.5 * (irandom_range(0, 100) < critch));   
            bb.direction = mousedir + irandom(weaponInf[W_PR.__SPRAY_ANGLE]);       
            bb.speed = weaponInf[W_PR.__PROJECTILE_SPEED];         
        }
        break;
    }
    // decrease the bullets
    weaponAmmo -= weaponInf[W_PR.__BULLETS_PER_SHOT];
    playerWeaponSetState(WEAPON_STATES.__RANGE_SHOT);
    break;
}   

