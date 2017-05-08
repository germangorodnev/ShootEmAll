///colPlaceFreeSide(x_to, y_to, solid only)
// additionally returns side (0 - r, 1 - t, 2 - l, 3 - b) of collision
if (instance_exists(oLevel))
{
    var xto = argument[0],
        yto = argument[1];
    var xo = x,
        yo = y;
        
    x = xto;
    y = yto;
    var rd = bbox_right div LEVEL.TILE_W,
        ld = bbox_left div LEVEL.TILE_W,
        td = bbox_top div LEVEL.TILE_H,
        bd = bbox_bottom div LEVEL.TILE_H;
    
    var rtmeet = (oLevel.level[# rd, td] & argument[2]),
        ltmeet = (oLevel.level[# ld, td] & argument[2]);
        
    var rbmeet = (oLevel.level[# rd, bd] & argument[2]),
        lbmeet = (oLevel.level[# ld, bd] & argument[2]);
        
    x = xo;
    y = yo;

    if (rbmeet && rtmeet) // right
        return 0;
    if (rtmeet && ltmeet) //top
        return 1;
    if (ltmeet && lbmeet) // left
        return 2;
    if (rbmeet && rbmeet) // bottom
        return 3;
    return -1;
}
else
{
    var nn = argument[2];
    return !place_meeting(argument[0], argument[1], oSolidObject);
}
