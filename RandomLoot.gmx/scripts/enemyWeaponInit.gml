///enemyWeaponInit(ENEMY_WEAPON.__)
//SWITCH ADD
var bprs = 6;
switch (argument[0])
{
case ENEMY_WEAPON.__SELF:

    break;
    
case ENEMY_WEAPON.__MACHINEGUN:
    weaponSprite[0] = sEnemyMachinegun;
    weaponSprite[1] = sEnemyMachinegunShoot;
    weaponXoff = 4;
    weaponYoff = -16;
    weaponAnimSpeed[1] = 0.3;
    weaponObj.anMaxAngle = 4;
    ldirx = 37;
    ldirdir = 0;
    critchance = 0;
    mindmg = 1;
    maxdmg = 1;
    projectileSpeed = bprs;
    sprayAngle = 5;
    shootcd = 2 * room_speed;
    break;
    
/* OCTO SHIELDER */
case ENEMY_WEAPON.__TAZER:
    weaponSprite[0] = sOctoGuardTazer;
    weaponSprite[1] = sOctoGuardTazer;
    weaponXoff = 4;
    weaponYoff = -25;
    weaponAnimSpeed[1] = 0.3;
    weaponObj.anMaxAngle = 4;
    ldirx = 24;
    ldirdir = 12;
    critchance = 0;
    mindmg = 1;
    maxdmg = 2;
    projectileSpeed = bprs;
    sprayAngle = 5;
    shootcd = 2 * room_speed;
    break;
    
case ENEMY_WEAPON.__SHIELD:
    weaponXoff = 18;
    weaponYoff = 0;
    weaponObj.anMaxAngle = 5;
    weaponObj.image_yscale = 1;
    break;
    
    
    
    
    
    
case ENEMY_WEAPON.__OCTO_CLUB:
    weaponSprite[0] = sOctoGuardClub;
    weaponSprite[1] = sOctoGuardClub;
    weaponSprite[2] = sOctoGuardClub;
    weaponXoff = 6;
    weaponYoff = -25;
        
    with (weaponObj)
    {
        attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
        angleNeedDown[0] = -110;
        angleRotDown[0] = 22;
        image_angle = angleNeedDown[0];
        anMaxAngle = 6;
    }  
    
    maskScale = 2;
    critchance = 0;
    mindmg = 1;
    maxdmg = 1;
    shootcd = 1.5 * room_speed;
    dmgcd = .5 * room_speed;
    break;  
    
    
    
case ENEMY_WEAPON.__OCTO_PISTOL:
    weaponSprite[0] = sOctoAttackW1;
    weaponSprite[1] = sOctoAttackW1;
    weaponXoff = 4;
    weaponYoff = -25;
    weaponAnimSpeed[1] = 0.3;
    weaponObj.anMaxAngle = 4;
    ldirx = 37;
    ldirdir = 0;
    critchance = 0;
    mindmg = 1;
    maxdmg = 2;
    projectileSpeed = bprs;
    sprayAngle = 5;
    shootcd = 2 * room_speed;
    break;
    
case ENEMY_WEAPON.__OCTO_RIFLE:
    weaponSprite[0] = sOctoAttackW2;
    weaponSprite[1] = sOctoAttackW2;
    weaponXoff = 4;
    weaponYoff = -25;
    weaponAnimSpeed[1] = 0.3;
    weaponObj.anMaxAngle = 4;
    ldirx = 37;
    ldirdir = 0;
    critchance = 0;
    mindmg = 1;
    maxdmg = 2;
    projectileAmount = 1;
    projectileSpeed = bprs;
    sprayAngle = 3;
    shootcd = 2 * room_speed;
    break;
    
case ENEMY_WEAPON.__OCTO_SHOTGUN:
    weaponSprite[0] = sOctoAttackW3;
    weaponSprite[1] = sOctoAttackW3;
    weaponXoff = 4;
    weaponYoff = -25;
    weaponAnimSpeed[1] = 0.3;
    weaponObj.anMaxAngle = 4;
    ldirx = 37;
    ldirdir = 0;
    critchance = 0;
    mindmg = 1;
    maxdmg = 2;
    projectileAmount = 4;
    projectileSpeed = bprs;
    sprayAngle = 5;
    shootcd = 2 * room_speed;
    break;
    
case ENEMY_WEAPON.__OCTO_HEAL:
    weaponSprite[0] = sOctoHealerWeapon;
    weaponSprite[1] = sOctoHealerWeapon;
    weaponXoff = 4;
    weaponYoff = -25;
    weaponAnimSpeed[1] = 0.3;
    weaponObj.anMaxAngle = 4;
    ldirx = 37;
    ldirdir = 0;
    critchance = 0;
    mindmg = 1;
    maxdmg = 1;
    projectileSpeed = bprs;
    sprayAngle = 5;
    shootcd = 2 * room_speed;
    break;
    
/* ******************** B O S S R O C K E R *********************** */
case ENEMY_WEAPON.__ROCKER_MINIGUN:
    weaponSprite[0] = sRockerMinigun;
    weaponSprite[1] = sRockerMinigunShoot;
    weaponXoff = 4;
    weaponYoff = -16;
    weaponAnimSpeed[1] = 0.3;
    weaponObj.anMaxAngle = 7;
    ldirx = 85;
    ldirdir = 0;
    critchance = 0;
    mindmg = 1;
    maxdmg = 1;
    projectileSpeed = bprs;
    sprayAngle = 8;
    shootcd = round(.05 * room_speed);
    dmgcd = max(1, round(.08 * room_speed));
    break;
    
case ENEMY_WEAPON.__ROCKER_UZI:

    break;
    
case ENEMY_WEAPON.__ROCKER_GUITAR:

    break;
}
enemyWeaponSetState(WEAPON_STATES.__MOVE);
