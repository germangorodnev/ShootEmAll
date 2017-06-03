///playerPickup()
pwId = noone;
var pickup = instance_place(x, y, oPickupableObject);
if (pickup != noone)
{
    if (physicalOnOneLine(y, pickup.compareY))
        pickupId = pickup;
    else
        pickupId = noone;
}
else 
{
    pickup = playerMaskPickup();
    if (pickup != noone)
        pickupId = pickup;
    else
        pickupId = noone;
}
if (pickupId == noone)
    exit;
    
if (!pickupId.autopickup)
{
    switch (pickupId.type)
    {
    case PICKUP.__WEAPON:
        pwId = pickupId;
        pickupId = noone;
        pwName = pwId.name;
        pwType = pwId.class;
        if (!key[KEY.PICKUP])
            exit;
        if (weaponObj.state == WEAPON_STATES.__RANGE_RELOAD)
            exit;
        key[KEY.SINGLEUSE_ITEM] = 0;
        playerPickupWeapon(pwId, pwId.value);
        with (pwId)
            instance_destroy();
        pwId = noone;
        break;
        
    case PICKUP.__CRATE:
        if (!pickupId.cap)
        {
            pickupId = noone;
            exit;
        }
        if (!key[KEY.PICKUP])
            exit;
        crateOpen(pickupId, id);
        break;
        
    case PICKUP.__SHOP:
        if (!key[KEY.PICKUP])
            exit;
        with (pickupId)
            shopOpen();    
        break;
        
    case PICKUP.__SU_CARDS:
        if (!key[KEY.PICKUP])
            exit;
        key[KEY.SINGLEUSE_ITEM] = 0;
        playerPickupCard(pickupId);  
        with (pickupId)
            instance_destroy();    
        break;
        
    case PICKUP.__EAT:
        if (!key[KEY.PICKUP])
            exit;
        key[KEY.SINGLEUSE_ITEM] = 0;
            playerPickupEat(pickupId);  
        with (pickupId)
            instance_destroy();    
        break;
            
    case PICKUP.__RECH_EXPLOSIVES:
        if (!key[KEY.PICKUP])
            exit;
        key[KEY.RECHARGABLE_ITEM] = 0;
        playerPickupRechargableExplosive(pickupId);  
        with (pickupId)
            instance_destroy();    
        break;
    }
    //SWITCH ADD PICKUP
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
