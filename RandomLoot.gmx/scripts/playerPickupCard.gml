///playerPickupCard(pickupid)
var card = argument[0];
if (singleuse == SINGLEUSE.__NONE)
{
    // just add
    singleuse = card.value;
    singleusePar[0] = singleuse;
}
else
{
    // drop existing
    var crd = singleuse;
    with (instance_create(x, y, oPickupCard))
        pickupableInit(PICKUP.__SU_CARDS, crd);
    singleuse = SINGLEUSE.__NONE;
    playerPickupCard(card);
}
