///playerSetWeapon(WEAPONS.__...)
weapon = argument[0];
weaponType = gameGetWeaponType(weapon);
if (weapon != WEAPONS.__NONE)
{
    weaponInf = gameGetWeaponParams(weapon, weaponType);
    playerRecountGUI();
}

weaponBlend = c_white;
for (var i = 0; i < 2; i++)
{    
    weaponSprite[i] = -1;
    weaponAnimSpeed[i] = 0;
}

//SWITCH ADD WEAPONS
switch (weapon)
{
case WEAPONS.__NONE:
    
    break;
    
    
    
case WEAPONS.__BLOOD_FLAG:
    weaponSprite[0] = sBloodFlag;
    weaponXoff = 15;
    weaponYoff = -sprite_height / 2 + 15;
    break;
    
case WEAPONS.__POMPINGTON:
    weaponSprite[0] = sPompington;
    weaponSprite[1] = sPompingtonShoot;
    weaponAnimSpeed[1] = 0.15;
    weaponXoff = 4;
    weaponYoff = -12;
    break;
}

playerWeaponSetState(WEAPON_STATES.__MOVE);
    

