///colPlaceFree(x_to, y_to, solid only)
if (instance_exists(oLevel))
{
    var xto = argument[0],
        yto = argument[1];
    var xo = x,
        yo = y;
        
    x = xto;
    y = yto;
    
    var xmeet = (oLevel.level[# bbox_right div LEVEL.TILE_W, bbox_top div LEVEL.TILE_H] == argument[2])
        || (oLevel.level[# bbox_left div LEVEL.TILE_W, bbox_top div LEVEL.TILE_H] == argument[2]);
        
    var ymeet = (oLevel.level[# bbox_right div LEVEL.TILE_W, bbox_bottom div LEVEL.TILE_H] == argument[2])
        || (oLevel.level[# bbox_left div LEVEL.TILE_W, bbox_bottom div LEVEL.TILE_H] == argument[2]);
        
    x = xo;
    y = yo;

    if (xmeet || ymeet)
        return 0;
    return 1;
}
else
{
    var nn = argument[2];
    return !place_meeting(argument[0], argument[1], oSolidObject);
}
