///playerCreateWeaponInf(picupable* id)
var idd = argument[0];
with (pwi)
    instance_destroy();
pwi = instance_create(x, y, oPlayerWeaponInf);
