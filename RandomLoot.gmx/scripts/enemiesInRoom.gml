///enemiesInRoom(roomComein id, enemyClass)
// returns list
var ls = ds_list_create(),
    rcomein = argument[0],
    _x1 = rcomein.roomX1,
    _y1 = rcomein.roomY1,
    _x2 = rcomein.roomX2,
    _y2 = rcomein.roomY2;
with (argument[1])
{
    if (state >= 0)
        if (collision_rectangle(_x1, _y1, _x2, _y2, id, 1, 0) == id)
            ds_list_add(ls, id);
}
return ls;
