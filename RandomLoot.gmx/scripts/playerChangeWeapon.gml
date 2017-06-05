if (weaponBack == WEAPONS.__NONE)
    exit;
if (weaponObj.state == WEAPON_STATES.__RANGE_RELOAD)
    exit;
    
var ww = weapon,
    aa = weaponAmmo,
    winf = -1, // our current weapon array
    chinf = 0; // change arrays
    
if (weapon == WEAPONS.__CUSTOM
    || weaponBack == WEAPONS.__CUSTOM)
{
    winf = weaponInf;
    chinf = 1;
}

/*switch (weaponBack)
{
case WEAPONS.__CUSTOM:
    break;
default:
    break;
}*/

weapon = weaponBack;
weaponAmmo = weaponBackAmmo;
if (chinf)
{
    weaponInf = weaponBackInf;
    weaponBackInf = winf;
}
winf = 0;
playerSetWeapon(weapon);
weaponBack = ww;
weaponBackAmmo = aa;    

