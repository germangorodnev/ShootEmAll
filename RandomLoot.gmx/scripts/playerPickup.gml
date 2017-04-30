///playerPickup(obj id)
if (argument[0] == noone)
    exit;
var obj = argument[0];
if (!obj.autopickup)
{
    if (!key[KEY.PICKUP])
        exit;
    //SWITCH ADD PICKUP
    switch (obj.type)
    {
    case PICKUP.__WEAPON:
        playerPickupWeapon(obj, obj.value);
        with (obj)
            instance_destroy();
        break;
    }
}
else
{
    switch (obj.type)
    {
    case PICKUP.__AMMO:
        playerPickupAmmo(obj.value, obj.ammo);
        with (obj)
            instance_destroy();    
        break;
        
    case PICKUP.__HP:
        playerChangeHP(obj.value);
        with (obj)
            instance_destroy();
        break;
        
    case PICKUP.__MONEY:
        playerAddMoney(obj.value);
        with (obj)
            instance_destroy();    
        break;
    }
}
