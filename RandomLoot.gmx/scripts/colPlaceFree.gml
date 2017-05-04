///colPlaceFree(x_to, y_to, solid only)
if (instance_exists(oLevel))
{
    var xto = argument[0],
        yto = argument[1];
    var xo = x,
        yo = y;
        
    x = xto;
    y = yto;
    
    var xmeet = (oLevel.level[# bbox_right div LEVEL.TILE_W, bbox_top div LEVEL.TILE_H] != LEVEL.FLOOR)
        || (oLevel.level[# bbox_left div LEVEL.TILE_W, bbox_top div LEVEL.TILE_H] != LEVEL.FLOOR);
        
    var ymeet = (oLevel.level[# bbox_right div LEVEL.TILE_W, bbox_bottom div LEVEL.TILE_H] != LEVEL.FLOOR)
        || (oLevel.level[# bbox_left div LEVEL.TILE_W, bbox_bottom div LEVEL.TILE_H] != LEVEL.FLOOR);
        
    x = xo;
    y = yo;

    if (xmeet || ymeet)
        return 0;
    return 1;
}
else
    if (argument2)
    {
        return !place_meeting(argument0, argument1, oSolidObject);
    }

