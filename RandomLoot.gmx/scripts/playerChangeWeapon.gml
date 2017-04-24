if (weaponBack == WEAPONS.__NONE)
    exit;
var ww = weapon,
    aa = weaponAmmo;
weapon = weaponBack;
weaponAmmo = weaponBackAmmo;
playerSetWeapon(weapon);
weaponBack = ww;
weaponBackAmmo = aa;
