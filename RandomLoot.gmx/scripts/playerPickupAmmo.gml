///playerPickupAmmo(AMMO.__ type, int amount)
var ammoType = argument[0],
    aa = argument[1];
ammo[ammoType] = min(ammo[ammoType] + aa, ammoMax[ammoType]);
