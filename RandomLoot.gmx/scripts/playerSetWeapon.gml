///playerSetWeapon(WEAPONS.__...)
weapon = argument[0];
weaponType = gameGetWeaponType(weapon);
if (weapon != WEAPONS.__NONE)
{
    weaponInf = gameGetWeaponParams(weapon, weaponType);
    playerRecountGUI();
}

// resets
recoilSpd = 0;
weaponBlend = c_white;
for (var i = 0; i < 3; i++)
{    
    weaponSprite[i] = -1;
    weaponAnimSpeed[i] = 0;
}
with (weaponObj)
{
    anMaxAngle = 0;
    image_xscale = 1;
    image_yscale = 1;
    canShootTmr = -1;
    canShoot = 1;
    attackType = -1;
}

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
    weaponObj.angleNeedDown = -90;
    with (weaponObj)
        weaponAttackTypeInit();
    break;
    
case WEAPONS.__HALFSWORD:
    weaponSprite[0] = sHalfsword;
    weaponSprite[1] = sHalfsword;
    weaponSprite[2] = sHalfsword;
    weaponXoff = 15;
    weaponYoff = -13;
    weaponObj.anMaxAngle = 10;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
    weaponObj.angleNeedDown = -155;
    weaponObj.angleRotDown = 22;
    
    weaponObj.angleNeedUp = 0;
    weaponObj.angleRotUp = 15;
    break;
    
case WEAPONS.__COPPER_DEVIL:
    weaponSprite[0] = sCopperDevil;
    weaponSprite[1] = sCopperDevil;
    weaponSprite[2] = sCopperDevil;
    weaponXoff = 20;
    weaponYoff = -8;
    weaponObj.anMaxAngle = 5;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
    weaponObj.angleNeedDown = -155;
    weaponObj.angleRotDown = 22;
    
    weaponObj.angleNeedUp = 0;
    weaponObj.angleRotUp = 15;
    break;
        
case WEAPONS.__STICK:
    weaponSprite[0] = sStick;
    weaponSprite[1] = sStick;
    weaponSprite[2] = sStick;
    weaponXoff = 17;
    weaponYoff = -8;
    weaponObj.anMaxAngle = 5;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
    weaponObj.angleNeedDown = -120;
    weaponObj.angleRotDown = 22;
    
    weaponObj.angleNeedUp = 0;
    weaponObj.angleRotUp = 18;
    break;
    
case WEAPONS.__ARIA_ARTH:
    weaponSprite[0] = sAriaArthef;
    weaponSprite[1] = sAriaArthef;
    weaponSprite[2] = sAriaArthef;
    weaponXoff = 17;
    weaponYoff = -8;
    weaponObj.anMaxAngle = 5;
    
    weaponObj.attackType = WEAPON_ATTACK_TYPE.__DOWN_UP;
    weaponObj.angleNeedDown = -155;
    weaponObj.angleRotDown = 22;
    
    weaponObj.angleNeedUp = 0;
    weaponObj.angleRotUp = 15;
    break;

    
    
            
case WEAPONS.__POMPINGTON:
    weaponSprite[0] = sPompington;
    weaponSprite[1] = sPompingtonShoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 4;
    weaponYoff = -12;
    weaponObj.anMaxAngle = 4;
    break;
    
case WEAPONS.__RXP:
    weaponSprite[0] = sRXP;
    weaponSprite[1] = sRXPShoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 3;
    weaponYoff = -12;
    weaponObj.anMaxAngle = 3;
    break;
    
case WEAPONS.__RECT1:
    weaponSprite[0] = sRECT1;
    weaponSprite[1] = sRECT1Shoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 3;
    weaponYoff = -12;
    weaponObj.anMaxAngle = 3;
    break;

case WEAPONS.__ROMAN_MG:
    weaponSprite[0] = sRomanMG;
    weaponSprite[1] = sRomanMGShoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 3;
    weaponYoff = -12;
    weaponObj.anMaxAngle = 3;
    recoilSpd = 4;
    break;

case WEAPONS.__NOVA_M:
    weaponSprite[0] = sNovaM;
    weaponSprite[1] = sNovaMShoot;
    weaponAnimSpeed[1] = 0.3;
    weaponXoff = 3;
    weaponYoff = -12;
    weaponObj.anMaxAngle = 3;
    break;
}

playerWeaponSetState(WEAPON_STATES.__MOVE);
    

