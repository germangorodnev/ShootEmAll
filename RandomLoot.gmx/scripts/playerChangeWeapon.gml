if (weaponBack == WEAPONS.__NONE)
    exit;
if (weaponObj.state == WEAPON_STATES.__RANGE_RELOAD)
    exit;
    
var ww = weapon,
    aa = weaponAmmo;
weapon = weaponBack;
weaponAmmo = weaponBackAmmo;
playerSetWeapon(weapon);
weaponBack = ww;
weaponBackAmmo = aa;
