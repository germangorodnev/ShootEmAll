var pickup = instance_place(x, y, oPickupableObject);
if (pickup != noone)
{
    if (physicalOnOneLine(y, pickup.compareY))
        pickupId = pickup;
}

