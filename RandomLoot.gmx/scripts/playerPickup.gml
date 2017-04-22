///playerPickup(obj id)
if (argument[0] == noone)
    exit;
var obj = argument[0];
//SWITCH ADD PICKUP
switch (obj.type)
{
case PICKUP.__WEAPON:
    playerPickupWeapon(obj, obj.value);
    with (obj)
        instance_destroy();
    break;
}
