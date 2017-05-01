///playerPickup()
var pickup = instance_place(x, y, oPickupableObject);
if (pickup != noone)
{
    if (physicalOnOneLine(y, pickup.compareY))
        pickupId = pickup;
    else
        pickupId = noone;
}
else
    pickupId = noone;
if (pickupId == noone)
    exit;
if (!pickupId.autopickup)
{
    if (!key[KEY.PICKUP])
        exit;
    //SWITCH ADD PICKUP
    switch (pickupId.type)
    {
    case PICKUP.__WEAPON:
        playerPickupWeapon(pickupId, pickupId.value);
        with (pickupId)
            instance_destroy();
        break;
    }
}
else
{
    switch (pickupId.type)
    {
    case PICKUP.__AMMO:
        playerPickupAmmo(pickupId.value, pickupId.ammo);
        with (pickupId)
            instance_destroy();    
        break;
        
    case PICKUP.__HP:
        if (hp != _hp)
        {
            playerChangeHP(pickupId.value);
            with (pickupId)
                instance_destroy();
        }
        break;
        
    case PICKUP.__MONEY:
        playerAddMoney(pickupId.value);
        with (pickupId)
            instance_destroy();    
        break;
    }
}
