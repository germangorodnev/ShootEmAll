///physicalMoveToPoint(xto, yto, spd, spdmod)
var xx = argument[0],
    yy = argument[1],
    ss = argument[2],
    ssmod = argument[3],
    chX = 0;
var ssmult = ss * 1.5;
  
if (x != median(xx - ssmult, x, xx + ssmult))
    chX = 1;
else
    x = xx;
if (y == median(yy - ssmult, y, yy + ssmult))
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

