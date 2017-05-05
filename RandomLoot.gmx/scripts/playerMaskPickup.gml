with (maskHit)
{
    var oo = instance_place(x, y, oPickupableObject);
    if (oo != noone)
    {
        if (oo.cmp == 1)
            return oo;
    }
    return noone;
}
