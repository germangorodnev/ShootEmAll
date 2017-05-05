///crateOpen(crate id)
with (argument[0])
{
    cap = 0;
    with (instance_create(x - irandom(100) * choose(-1, 1), y + irandom(50) * choose(-1, 1),
        oPickupWeapon))
        pickupableInit(PICKUP.__WEAPON, gameGetRandomWeapon(2), 3);
}
