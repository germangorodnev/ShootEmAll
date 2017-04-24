///playerSetWeapon(WEAPONS.__...)
weapon = argument[0];
weaponType = gameGetWeaponType(weapon);
if (weapon != WEAPONS.__NONE)
{
    weaponInf = gameGetWeaponParams(weapon, weaponType);
    playerRecountGUI();
}

// resets
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
    with (weaponObj)
        weaponAttackTypeInit();
    break;
    
case WEAPONS.__HALFSWORD:
    weaponSprite[0] = sHalfsword;
    weaponSprite[1] = sHalfsword;
    weaponSprite[2] = sHalfsword;
    weaponXoff = 15;
    weaponYoff = -sprite_height / 2 + 23;
    weaponObj.anMaxAngle = 10;
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
}

playerWeaponSetState(WEAPON_STATES.__MOVE);
    

