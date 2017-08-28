var pa = noone,
    pm = noone,
    obj = id;
with (oPickupableObject)
{
    if (instance_place(x, y, oPlayer) == obj)
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
