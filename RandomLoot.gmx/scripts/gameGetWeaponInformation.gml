///gameGetWeaponInformation(WEAPONS.__ name)
var weap = argument[0],
    _arr;
    
/* signature
// 0 - name
// 1 - description
// 2 - type
// 3 - sprite
// 4 - image_index 
*/
    
_arr[0] = "WEAPON_NAME";
_arr[1] = "WEAPON_DESCRIPTION";
_arr[2] = "WEAPON_TYPE";
_arr[4] = 0;

_winf = gameGetString(1, PICKUP.__WEAPON, weap);
_arr[0] = _winf[0]; 
_arr[1] = _winf[1]; 

// SWITCH ADD
switch (weap)
{
case WEAPONS.__BLOOD_FLAG:
    _arr[3] = sBloodFlag; 
    _arr[2] = gameGetString(2, 0, "melee");
    break;
case WEAPONS.__HALFSWORD:
    _arr[3] = sHalfsword; 
    _arr[2] = gameGetString(2, 0, "melee");
    break;
case WEAPONS.__COPPER_DEVIL:
    _arr[3] = sCopperDevil; 
    _arr[2] = gameGetString(2, 0, "melee");
    break;
case WEAPONS.__STICK:
    _arr[3] = sStick; 
    _arr[2] = gameGetString(2, 0, "melee");
    break;
case WEAPONS.__ARIA_ARTH:
    _arr[3] = sAriaArthef; 
    _arr[2] = gameGetString(2, 0, "melee");
    break;
case WEAPONS.__RAZORBLADE:
    _arr[3] = sRazorblade; 
    _arr[2] = gameGetString(2, 0, "melee");
    break;


case WEAPONS.__POMPINGTON:
    _arr[3] = sPompington; 
    _arr[2] = gameGetString(2, 0, "shotgun");
    break;
case WEAPONS.__RXP:
    _arr[3] = sRXP; 
    _arr[2] = gameGetString(2, 0, "pistol");
    break;
case WEAPONS.__RECT1:
    _arr[3] = sRECT1; 
    _arr[2] = gameGetString(2, 0, "pistol");
    break;
case WEAPONS.__ROMAN_MG:
    _arr[3] = sRomanMG; 
    _arr[2] = gameGetString(2, 0, "machinegun");
    break;
case WEAPONS.__NOVA_M:
    _arr[3] = sNovaM; 
    _arr[2] = gameGetString(2, 0, "automat");
    break;
case WEAPONS.__BORIAN_BULG:
    _arr[3] = sBorianBulg; 
    _arr[2] = gameGetString(2, 0, "pistol");
    break;
case WEAPONS.__GRENADE_LAUNCHER:
    _arr[3] = sOneGL; 
    _arr[2] = gameGetString(2, 0, "launcher");
    break;
case WEAPONS.__FOREST_MANTIS:
    _arr[3] = sForestMantis; 
    _arr[2] = gameGetString(2, 0, "automat");
    break;
case WEAPONS.__OVERKILLINGTON:
    _arr[3] = sOverkillington; 
    _arr[2] = gameGetString(2, 0, "pistol");
    break;
case WEAPONS.__PHASER:
    _arr[3] = sPhaserEmpty; 
    _arr[2] = gameGetString(2, 0, "launcher");
    break;
case WEAPONS.__DESTRUCTOR:
    _arr[3] = sDestructor; 
    _arr[2] = gameGetString(2, 0, "pistol");
    break;
case WEAPONS.__DOUBLE_BARREL:
    _arr[3] = sDoubleBarrel; 
    _arr[2] = gameGetString(2, 0, "shotgun");
    break;
case WEAPONS.__TESLA_BOOM:
    _arr[3] = sTeslaBoom; 
    _arr[2] = gameGetString(2, 0, "automat");
    break;
case WEAPONS.__LASER_BEE:
    _arr[3] = sLaserBee; 
    _arr[2] = gameGetString(2, 0, "automat");
    break;
case WEAPONS.__BIG_BULG:
    _arr[3] = sBigBulg; 
    _arr[2] = gameGetString(2, 0, "pistol");
    break;
case WEAPONS.__ASSAULT_RIFLE:
    _arr[3] = sPushRifle; 
    _arr[2] = gameGetString(2, 0, "automat");
    break;
}

return _arr;

