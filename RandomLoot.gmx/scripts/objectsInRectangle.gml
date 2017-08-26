///objectsInRectangle(x1, y1, x2, y2, obj)
// returns list
var ls = ds_list_create(),
    _x1 = argument[0],
    _y1 = argument[1],
    _x2 = argument[2],
    _y2 = argument[3];
with (argument[4])
{
    if (collision_rectangle(_x1, _y1, _x2, _y2, id, 1, 0) == id)
        ds_list_add(ls, id);
}
return ls;
