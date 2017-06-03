///playerPickupEat(pickupid)
var food = argument[0];
if (singleuse == SINGLEUSE.__NONE)
{
    // just add
    singleuse = food.value;
    singleusePar[0] = food.image_index;
    singleusePar[1] = sPickupEat;
    singleuseGroup = PICKUP.__EAT;
}
else
{
    // drop existing
    playerSingleuseDropCurrent();
    playerPickupEat(food);
}
