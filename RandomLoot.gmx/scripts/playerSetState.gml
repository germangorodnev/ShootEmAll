///playerSetState(PLAYER_STATES.__...)
state = argument0;
damagable = 1;

switch (state)
{
case PLAYER_STATES.__IDLE:
    procedureAnimableReset();
    break;
    
case PLAYER_STATES.__ATTACK_SHOOT_ANIM:
    weaponAnimSpd = weaponAnimSpeed[1];
    weaponSpr = weaponSprite[1];
    weaponImage = 0;
    break;
    
case PLAYER_STATES.__ATTACK:
    switch (weaponType)
    {
    /* ******************************************************** MELEE ***********************************************************/    
    case WEAPON_TYPE.__MELEE:
        playerSetState(PLAYER_STATES.__ATTACK_MELEE_BEGIN);
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
                xx = weaponXoff + lengthdir_x(weaponInf[W_PR.__LDIR_X], mousedir),
                yy = weaponYoff + lengthdir_y(weaponInf[W_PR.__LDIR_Y], mousedir),
                critch = weaponInf[W_PR.__CRIT_CHANCE];
            repeat (weaponInf[W_PR.__PROJECTILE_AMOUNT])
            {
                var bb = instance_create(x + xx, y + yy, bullet);
                bullet.damage = irandom_range(weaponInf[W_PR.__DAMAGE_MIN], weaponInf[W_PR.__DAMAGE_MAX])
                    * max(1, 1.5 * (irandom_range(0, 100) < critch));   
                bullet.direction = mousedir + irandom(weaponInf[W_PR.__SPRAY_ANGLE]);
                
            }
            break;
        }
        // decrease the bullets
        weaponAmmo -= weaponInf[W_PR.__BULLETS_PER_SHOT];
        canAttackTimer = weaponInf[W_PR.__SHOOT_CD];
        playerSetState(PLAYER_STATES.__ATTACK_SHOOT_ANIM);
        break;
    }   
    break;
}
