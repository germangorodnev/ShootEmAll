///playerPickupCard(pickupid)
var card = argument[0];
if (singleuse == SINGLEUSE.__NONE)
{
    // just add
    singleuse = card.value;
    singleusePar[0] = singleuse;
    singleusePar[1] = sPickupCards;
    singleuseGroup = PICKUP.__SU_CARDS;
}
else
{
    // drop existing
    playerSingleuseDropCurrent();
    playerPickupCard(card);
}
