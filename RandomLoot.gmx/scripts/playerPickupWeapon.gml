///playerPickupWeapon(WEAPONS new)
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
        with (instance_create(x, y, oPickupWeapon))
            pickupableInit(PICKUP.__WEAPON, weapon);
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

