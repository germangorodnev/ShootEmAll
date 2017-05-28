///objectsInCircle(circle x, circle y, circle r, obj)
// returns list
var ls = ds_list_create(),
    cx = argument[0],
    cy = argument[1],
    cr = argument[2];
with (argument[3])
{
    if (collision_circle(cx, cy, cr, id, 1, 0) == id)
        ds_list_add(ls, id);
}
return ls;
