///physicalMoveToPoint(xto, yto, spd, spdmod)
var xx = argument[0],
    yy = argument[1],
    ss = argument[2],
    ssmod = argument[3],
    chX = 0;
  
if (x != median(xx - ss * 2, x, xx + ss * 2))
    chX = 1;
else
    x = xx;
if (y == median(yy - ss * 2, y, yy + ss * 2))
    y = yy;
if (x < xx)
{   
    xsc = 1 * chX + (xsc * !chX);
    hspd += ss * speedmod;
}
else if (x > xx)
{
    xsc = -1 * chX + (xsc * !chX);
    hspd -= ss * speedmod;
}

if (y < yy)
    vspd += ss * speedmod;
else if (y > yy)
    vspd -= ss * speedmod;  
    
if (x == xx && y == yy)
    return 1;
else 
    return 0;

