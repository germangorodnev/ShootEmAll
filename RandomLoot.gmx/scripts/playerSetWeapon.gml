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
case WEAPONS.__BLOOD_FLAG:
    weaponSprite[0] = sBloodFlag;
    weaponImage = 0;
    weaponXoff = 10;
    weaponYoff = -sprite_height / 2 + 10;
    break;
    
case WEAPONS.__POMPINGTON:
    weaponSprite[0] = sPompington;
    weaponSprite[1] = sPompingtonShoot;
    weaponImage = 0;
    weaponAnimSpeed[1] = 0.05;
    weaponXoff = 4;
    weaponYoff = -12;
    break;
}

weaponSpr = weaponSprite[0];
weaponImage = 0;
weaponAnimSpd = weaponAnimSpeed[0];
