///longBulletGetMasksOnLine(x1, y1, x2, y2, list, group, freeList)
var x1 = argument[0],
    y1 = argument[1],
    x2 = argument[2],
    y2 = argument[3], 
    ls = argument[4], // list
    gr = argument[5]; // group 0 - player, 1 - enemy
    
if (argument[6])
    ds_list_clear(ls);
    
with (oMaskHit)
{
    if (group != gr)
        continue;
    if (collision_line(x1, y1, x2, y2, id, 0, 0) == id) // well, we're on line
    {
        ds_list_add(ls, id);
    }
}

