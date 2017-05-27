///playerPickupRechargableExplosive(id)
var pk = argument[0];
if (rechargable == RECHARGABLE.__NONE)
{
    rechargable = pk.value;
    playerRechargableInit();
}
else
{
    // drop
    var cure = rechargable;
    with (instance_create(x, y, oPickupRechargable))
        pickupableInit(PICKUP.__RECH_EXPLOSIVES, cure);
    rechargable = RECHARGABLE.__NONE;
    playerPickupRechargableExplosive(pk);
}
