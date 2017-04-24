///playerPickupWeapon(WEAPONS new, int ammoIn)
var weap = argument[1],
    oo = argument[0];
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
        var wpp = weapon,
            amm = weaponAmmo;
        with (instance_create(x, y, oPickupWeapon))
            pickupableInit(PICKUP.__WEAPON, wpp, amm);
        weapon = weap;
        weaponAmmo = oo.ammo;
        playerSetWeapon(weapon);
    }
}   
else
{
    // directly to hands
    weapon = weap;
    weaponAmmo = oo.ammo;
    playerSetWeapon(weapon);    
}

