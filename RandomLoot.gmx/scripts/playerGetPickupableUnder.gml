//ds_list_clear(pickupAutoLs);
//ds_list_clear(pickupManualLs);
var pa = noone,
    pm = noone,
    obj = id;
with (oPickupableObject)
{
    if (instance_place(x, y, obj) == obj)
    {
        if (autopickup)
        {
            if (pa == noone)
                pa = id;
        }
        else
        {
            if (pm == noone)  
                pm = id;    
        }
    }
}
if (pa != noone)
    return pa;
return pm;
