///colPositionFree(x_to, y_to, bitmask)
if (instance_exists(oLevel))
{
    var xto = argument[0] div LEVEL.TILE_W,
        yto = argument[1] div LEVEL.TILE_H;
    if (oLevel.level[# xto, yto] & argument[2])
        return 0;
    return 1;
}
else
{
    var nn = argument[2];
    return !position_meeting(argument[0], argument[1], oSolidObject);
}
