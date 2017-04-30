///instancePlaceList(x, y, obj, ls, clr)
var xx = argument[0],
    yy = argument[1],
    obj = argument[2],
    ll = argument[3];
if (argument[4])
    ds_list_clear(ll);
var caller = id,
    in = noone,
    i;
with (obj)
{
    in = id;
    with (caller)
    {
        i = instance_place(xx, yy, in);
        if (i != noone)
            ds_list_add(ll, in);
    }
}       
