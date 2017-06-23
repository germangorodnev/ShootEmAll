///playerSetWeapon(WEAPONS.__...)
weapon = argument[0];
weaponType = gameGetWeaponType(weapon);
if (weapon != WEAPONS.__NONE)
{
    if (weapon != WEAPONS.__CUSTOM)
    {
        weaponInf = 0;
        weaponInf = gameGetWeaponParams(weapon, weaponType);
        playerRecountGUI();
    }
    else
    {
        // weapon inf is already oo.params!!
        //weaponInf = argument[1].params;//gameGetWeaponParams(weapon, weaponType);
        playerRecountGUI();    
    }
}
// resets
attackSoundsCnt = 0;
weaponSpriteNoammo = -1;
hitCount = 0;
lasLong = 1;
restoreWeap = 0;
weaponCd = 0;
restore = -1;
recoilSpd = 0;
weaponBlend = c_white;
for (var i = 0; i < 4; i++)
{    
    weaponSprite[i] = -1;
    weaponAnimSpeed[i] = 0;
}
with (weaponObj)
{
    anMaxAngle = 0;
    xsc = 1;
    image_yscale = 1;
    canShootTmr = -1;
    canShoot = 1;
    attackType = -1;
    animIndex = 0;
    angleNeedDown[0] = 0; 
    angleNeedUp[0] = 0;
    anOffXNeed[0] = 0; anOffXSpd[0] = 0;
    anOffYNeed[0] = 0; anOffYSpd[0] = 0;
    angleRotDown[0] = 0;
    angleRotUp[0] = 0;
}
if (weaponType == WEAPON_TYPE.__MELEE)
    weaponCd = 0.5;
    
    
//SWITCH ADD WEAPONS
switch (weapon)
{
case WEAPONS.__NONE:
    
    break;
    
    
    
case WEAPONS.__BLOOD_FLAG:
    weaponSprite[0] = sBloodFlag;
    weaponSprite[1] = sBloodFlagAttackDown;
    weaponSprite[2] = sBloodFlagAttackUp;
    weaponXoff = 15;
    weaponYoff = -sprite_height / 2 + 15;
    weaponObj.anMaxAngle = 10;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_TIMER_UP;

    with (weaponObj)
        weaponAttackTypeInit();
        
    // mask
    kx1 = 57;
    ky1 = 1;
    kx2 = 120;
    ky2 = 80;
    break;
    
case WEAPONS.__HALFSWORD:
    weaponCd = 0.5 * room_speed;
    weaponSprite[0] = sHalfsword;
    weaponSprite[1] = sHalfsword;
    weaponSprite[2] = sHalfsword;
    weaponXoff = 15;
    weaponYoff = -13;
    weaponObj.anMaxAngle = 10;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
    
    with (weaponObj)
        weaponAttackTypeInit();
    
    // mask
    kx1 = 57;
    ky1 = 15;
    kx2 = 95;
    ky2 = 77;
    break;
    
case WEAPONS.__COPPER_DEVIL:
    weaponCd = 1 * room_speed;
    weaponSprite[0] = sCopperDevil;
    weaponSprite[1] = sCopperDevil;
    weaponSprite[2] = sCopperDevil;
    weaponXoff = 15;
    weaponYoff = -8;
    weaponObj.anMaxAngle = 5;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;

    with (weaponObj)
        weaponAttackTypeInit();

    // mask
    kx1 = 57;
    ky1 = 15;
    kx2 = 95;
    ky2 = 77;
    break;
        
case WEAPONS.__STICK:
    weaponSprite[0] = sStick;
    weaponSprite[1] = sStick;
    weaponSprite[2] = sStick;
    weaponXoff = 17;
    weaponYoff = -8;
    weaponObj.anMaxAngle = 5;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
    
    with (weaponObj)
        weaponAttackTypeInit();

    // mask
    kx1 = 57;
    ky1 = 20;
    kx2 = 90;
    ky2 = 70;
    break;
    
case WEAPONS.__ARIA_ARTH:
    weaponCd = 1 * room_speed;
    weaponSprite[0] = sAriaArthef;
    weaponSprite[1] = sAriaArthef;
    weaponSprite[2] = sAriaArthef;
    weaponXoff = 17;
    weaponYoff = -8;
    weaponObj.anMaxAngle = 5;
        
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_TIMER_UP;
    
    with (weaponObj)
        weaponAttackTypeInit();

    // mask
    kx1 = 57;
    ky1 = 15;
    kx2 = 105;
    ky2 = 77;
    break;

case WEAPONS.__RAZORBLADE:
    weaponCd = 0.2 * room_speed;
    weaponSprite[0] = sRazorblade;
    weaponSprite[1] = sRazorblade;
    weaponSprite[2] = sRazorblade;
    weaponXoff = 12;
    weaponYoff = -13;
    weaponObj.anMaxAngle = 10;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
    
    with (weaponObj)
        weaponAttackTypeInit();
    
    // mask
    kx1 = 57;
    ky1 = 15;
    kx2 = 100;
    ky2 = 77;
    break;
    
case WEAPONS.__SPECIAL_PRISONER:
    weaponCd = 0.2 * room_speed;
    weaponSprite[0] = sSpecialPrisoner;
    weaponSprite[1] = sSpecialPrisoner;
    weaponSprite[2] = sSpecialPrisoner;
    weaponXoff = 12;
    weaponYoff = -13;
    weaponObj.anMaxAngle = 10;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
    
    with (weaponObj)
        weaponAttackTypeInit();
    
    // mask
    kx1 = 57;
    ky1 = 15;
    kx2 = 100;
    ky2 = 77;
    break;

case WEAPONS.__CEREMONIAL_BORIAN:
    weaponCd = 0.2 * room_speed;
    weaponSprite[0] = sCeremoniaBorianSword;
    weaponSprite[1] = sCeremoniaBorianSword;
    weaponSprite[2] = sCeremoniaBorianSword;
    weaponXoff = 12;
    weaponYoff = -13;
    weaponObj.anMaxAngle = 10;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
    
    with (weaponObj)
        weaponAttackTypeInit();
    
    // mask
    kx1 = 57;
    ky1 = 15;
    kx2 = 100;
    ky2 = 77;
    break;
    
            
    
    
case WEAPONS.__POMPINGTON:
    weaponSprite[0] = sPompington;
    weaponSprite[1] = sPompingtonShoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 4;
    weaponYoff = -19;
    weaponObj.anMaxAngle = 4;
    break;
    
case WEAPONS.__RXP:
    weaponSprite[0] = sRXP;
    weaponSprite[1] = sRXPShoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 3;
    weaponYoff = -22;
    weaponObj.anMaxAngle = 6;
    
    attackSoundsCnt = 1;
    attackSounds[0] = sndPistol;
    break;
    
case WEAPONS.__RECT1:
    weaponSprite[0] = sRECT1;
    weaponSprite[1] = sRECT1Shoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 3;
    weaponYoff = -23;
    weaponObj.anMaxAngle = 3;
    break;

case WEAPONS.__ROMAN_MG:
    weaponSprite[0] = sRomanMG;
    weaponSprite[1] = sRomanMGShoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 3;
    weaponYoff = -24;
    weaponObj.anMaxAngle = 3;
    recoilSpd = 4;
    
    attackSoundsCnt = 1;
    attackSounds[0] = sndMachinegun;
    break;

case WEAPONS.__NOVA_M:
    weaponSprite[0] = sNovaM;
    weaponSprite[1] = sNovaMShoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 3;
    weaponYoff = -28;
    weaponObj.anMaxAngle = 3;
    break;
    
case WEAPONS.__BORIAN_BULG:
    restoreWeap = 1;
    restore = weaponInf[W_PR.__RELOAD_TIME];
    weaponSprite[0] = sBorianBulg;
    weaponSprite[1] = sBorianBulgShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -17;
    weaponObj.anMaxAngle = 3;
    break;

case WEAPONS.__GRENADE_LAUNCHER:
    weaponCd = 1.5 * room_speed;
    expRad = 45;
    weaponSprite[0] = sOneGL;
    weaponSprite[1] = sOneGLShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -16;
    weaponObj.anMaxAngle = 3;
    break;
    
case WEAPONS.__FOREST_MANTIS:
    lasLong = 3;
    weaponCd = 0.05 * room_speed;
    weaponSprite[0] = sForestMantis;
    weaponSprite[1] = sForestMantisShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -22;
    weaponObj.anMaxAngle = 3;
    break;

case WEAPONS.__OVERKILLINGTON:
    lasLong = 3;
    weaponCd = 1 * room_speed;
    weaponSprite[0] = sOverkillington;
    weaponSprite[1] = sOverkillingtonShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -22;
    weaponObj.anMaxAngle = 3;

    attackSoundsCnt = 1;
    attackSounds[0] = sndOverkillington;
    break;

case WEAPONS.__PHASER:
    expRad = 75;
    weaponCd = 1 * room_speed;
    weaponSprite[0] = sPhaser;
    weaponSprite[1] = sPhaserEmpty;
    weaponSprite[3] = sPhaserRecharge;
    weaponSpriteNoammo = sPhaserEmpty;
    weaponAnimSpeed[1] = 0.15;
    weaponAnimSpeed[3] = 0.005;
    weaponXoff = 5;
    weaponYoff = -22;
    weaponObj.anMaxAngle = 3;
    break;
    
case WEAPONS.__DESTRUCTOR:
    weaponCd = 0 * room_speed;
    weaponSprite[0] = sDestructor;
    weaponSprite[1] = sDestructorShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -22;
    weaponObj.anMaxAngle = 3;
    break;

case WEAPONS.__DOUBLE_BARREL:
    weaponCd = 0 * room_speed;
    weaponSprite[0] = sDoubleBarrel;
    weaponSprite[1] = sDoubleBarrelShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -22;
    weaponObj.anMaxAngle = 3;
    break;

case WEAPONS.__TESLA_BOOM:
    lasLong = 0.3 * room_speed;
    weaponCd = 0.5 * room_speed;
    weaponSprite[0] = sTeslaBoom;
    weaponSprite[1] = sTeslaBoomShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -22;
    weaponObj.anMaxAngle = 3;
    break;
    
case WEAPONS.__LASER_BEE:
    lasLong = 3;
    weaponCd = 0.2 * room_speed;
    weaponSprite[0] = sLaserBee;
    weaponSprite[1] = sLaserBeeShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -22;
    weaponObj.anMaxAngle = 3;
    break;
    
case WEAPONS.__BIG_BULG:
    restoreWeap = 1;
    restore = weaponInf[W_PR.__RELOAD_TIME];
    weaponSprite[0] = sBigBulg;
    weaponSprite[1] = sBigBulgShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -17;
    weaponObj.anMaxAngle = 3;
    break;

case WEAPONS.__ASSAULT_RIFLE:
    weaponSprite[0] = sPushRifle;
    weaponSprite[1] = sPushRifleShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -22;
    weaponObj.anMaxAngle = 3;
    break;

case WEAPONS.__STEEL_RUFF:
    weaponSprite[0] = sSteelRuff;
    weaponSprite[1] = sSteelRuffShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 5;
    weaponYoff = -25;
    weaponObj.anMaxAngle = 3;
    break;
        
case WEAPONS.__CUSTOM: // custom ranged weapon
    weaponCd = weaponInf[W_PR.__RANGE_CUSTOM_DAMAGECD];
    weaponSprite[0] = weaponInf[W_PR.__RANGE_CNT];
    weaponSprite[1] = weaponInf[W_PR.__RANGE_CUSTOM_SPR_SHOOT];
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = weaponInf[W_PR.__RANGE_CUSTOM_XOFF];
    weaponYoff = weaponInf[W_PR.__RANGE_CUSTOM_YOFF];
    weaponObj.anMaxAngle = 3;    
    break;
}

playerWeaponSetState(WEAPON_STATES.__MOVE);
    

