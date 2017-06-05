///playerPickupWeaponCustom(obj* id, WEAPONS type)
var weap = argument[1],
    oo = argument[0];
if (weapon != WEAPONS.__NONE)
{
    if (weaponBack == WEAPONS.__NONE)
    {
        // add to the backpack
        weaponBack = weap;
        weaponBackAmmo = oo.ammo;
        weaponBackInf = 0;
        weaponBackInf = oo.params;
    }
    else 
    {
        // need to drop weapon in hands
        playerWeaponDrop();
        playerPickupWeaponCustom(oo, weap);
    }
}   
else
{
    // directly to hands
    weapon = weap;
    weaponAmmo = oo.ammo;
    weaponInf = 0;
    weaponInf = oo.params;
    playerSetWeapon(weapon, oo);    
}

