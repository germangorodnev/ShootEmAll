///colPlaceFreeSide(x_to, y_to, solid only)
// additionally returns side (0 - r, 1 - t, 2 - l, 3 - b) of collision
var xto = argument[0],
    yto = argument[1],
    bmask = argument[2];
var xo = x,
    yo = y;
    
x = xto;
y = yto;

var rd = bbox_right div LEVEL.TILE_W,
    ld = bbox_left div LEVEL.TILE_W,
    td = bbox_top div LEVEL.TILE_H,
    bd = bbox_bottom div LEVEL.TILE_H,
    bbr = bbox_right,
    bbt = bbox_top,
    bbl = bbox_left,
    bbb = bbox_bottom;

var rtmeet = (oLevel.level[# rd, td] & bmask),
    ltmeet = (oLevel.level[# ld, td] & bmask);
    
var rbmeet = (oLevel.level[# rd, bd] & bmask),
    lbmeet = (oLevel.level[# ld, bd] & bmask);
    
x = xo;
y = yo;
if (rtmeet)
{
    if (!ltmeet && rbmeet)
    {
        if (pointColGrid(bbr, bbt, rd, td)
            && pointColGrid(bbr, bbb, rd, bd)) 
        return 0;        
    }
    else if (ltmeet)
    {
        if (pointColGrid(bbr, bbt, rd, td)
            && pointColGrid(bbl, bbt, ld, td)) 
        return 1;        
    }
}
if (ltmeet)
{
    if (!rtmeet && lbmeet)
    {
        if (pointColGrid(bbl, bbt, ld, td)
            && pointColGrid(bbl, bbb, ld, bd)) 
        return 2;
    }
    else if (rtmeet)
    {
        if (pointColGrid(bbr, bbt, rd, td)
            && pointColGrid(bbl, bbt, ld, td)) 
        return 1;
    }
}
if (rbmeet)
{
    if (!lbmeet && rtmeet)
    {
        if (pointColGrid(bbr, bbt, rd, td)
            && pointColGrid(bbr, bbb, rd, bd)) 
        return 0;        
    }
    else if (lbmeet)
    {
        if (pointColGrid(bbr, bbb, rd, bd)
            && pointColGrid(bbl, bbb, ld, bd)) 
        return 3;        
    }
}
if (lbmeet)
{
    if (!rbmeet && ltmeet)
    {
        if (pointColGrid(bbl, bbt, ld, td)
            && pointColGrid(bbl, bbb, ld, bd)) 
        return 2;
    }
    else if (rbmeet)
    {
        if (pointColGrid(bbr, bbb, rd, bd)
            && pointColGrid(bbl, bbb, ld, bd)) 
        return 3;
    }
}
/*if (rtmeet && ltmeet) //top
{
    if (pointColGrid(bbr, bbt, rd, td)
        || pointColGrid(bbl, bbt, ld, td)) 
    return 1;
}
if (ltmeet && lbmeet) // left
{
    if (pointColGrid(bbl, bbt, ld, td)
        || pointColGrid(bbl, bbb, ld, bd)) 
    return 2;
}
if (rbmeet && rtmeet) // right
{
    if (pointColGrid(bbr, bbt, rd, td)
        || pointColGrid(bbr, bbb, rd, bd)) 
    return 0;
}
if (rbmeet && lbmeet) // bottom
{
    if (pointColGrid(bbr, bbb, rd, bd)
        || pointColGrid(bbl, bbb, ld, bd)) 
    return 3;
}*/
return -1;

