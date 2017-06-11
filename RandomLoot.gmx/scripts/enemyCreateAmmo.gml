// current player's percentage
var perc = 0,
    gen = noone;
with (oPlayer)
{   
    if (weaponType == WEAPON_TYPE.__MELEE)
        gen = -1; // just random
    else
    {
        var tt = weaponInf[W_PR.__BULLET_TYPE];
        perc = (ammo[tt] / ammoMax[tt]) * 100;
    }    
}
if (perc > 50) // meh, random
    gen = -1;
else if (perc > 30) // med
    gen = 0;
else
    gen = 1;
switch (gen)
{
case -1: // random ammo
    var getAmmoType = choose(AMMO.__GRENADES, AMMO.__ROCKET, AMMO.__BULLET, AMMO.__ENERGY, AMMO.__SHOTGUN);
    var _arr = gameGetAmmoInformation(getAmmoType);
    with (instance_create(x + irandom_range(-10, 13), y + irandom_range(-11, 11), oPickupAmmo))
        pickupableInit(PICKUP.__AMMO, getAmmoType, _arr[irandom_range(1, _arr[0])]);    
    break;
case 0:
    var getAmmoType = choose(oPlayer.weaponInf[W_PR.__BULLET_TYPE], oPlayer.weaponInf[W_PR.__BULLET_TYPE], choose(AMMO.__GRENADES, AMMO.__ROCKET, AMMO.__BULLET, AMMO.__ENERGY, AMMO.__SHOTGUN));
    var _arr = gameGetAmmoInformation(getAmmoType);
    with (instance_create(x + irandom_range(-10, 13), y + irandom_range(-11, 11), oPickupAmmo))
        pickupableInit(PICKUP.__AMMO, getAmmoType, _arr[1]);    
    break;
case 1:
    var getAmmoType = oPlayer.weaponInf[W_PR.__BULLET_TYPE];
    var _arr = gameGetAmmoInformation(getAmmoType);
    with (instance_create(x + irandom_range(-10, 13), y + irandom_range(-11, 11), oPickupAmmo))
        pickupableInit(PICKUP.__AMMO, getAmmoType, _arr[_arr[0]]);    
    break;
}

