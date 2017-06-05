///playerPickupWeapon(obj* id, WEAPONS type)
var weap = argument[1],
    oo = argument[0];
if (weap == WEAPONS.__CUSTOM)
{
    playerPickupWeaponCustom(oo, weap);
    exit;
}
if (weapon != WEAPONS.__NONE)
{
    if (weaponBack == WEAPONS.__NONE)
    {
        // add to the backpack
        weaponBack = weap;
        weaponBackAmmo = oo.ammo;
    }
    else 
    {
        // need to drop weapon in hands
        playerWeaponDrop();
        playerPickupWeapon(oo, argument[1]);
    }
}   
else
{
    // directly to hands
    weapon = weap;
    weaponAmmo = oo.ammo;
    playerSetWeapon(weapon);    
}

