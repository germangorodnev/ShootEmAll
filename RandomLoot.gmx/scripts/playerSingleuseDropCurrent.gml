switch (singleuseGroup)
{
case PICKUP.__SU_CARDS:
    var crd = singleuse;
    with (instance_create(x, y, oPickupCard))
        pickupableInit(PICKUP.__SU_CARDS, crd);
    singleuse = SINGLEUSE.__NONE;
    break;
case PICKUP.__EAT:
    var ecurr = singleuse;
    with (instance_create(x, y, oPickupEat))
        pickupableInit(PICKUP.__EAT, ecurr);
    singleuse = SINGLEUSE.__NONE;
    break;
}
