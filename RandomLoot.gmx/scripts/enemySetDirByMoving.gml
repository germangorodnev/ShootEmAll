/*if (x - xprevious > 0)
    dir = 0;
else if (x - xprevious < -0)
    dir = 2;
else if (y - yprevious < -0)
    dir = 1;
else if (y - yprevious > 0)
    dir = 3;
*/
var dd = dir;
if (hspd > 0 && (abs(x - mX) > spd))
    dir = 0;
else if (hspd < 0 && (abs(x - mX) > spd))
    dir = 2;
else if (vspd > 0 && (abs(y - mY) > spd))
    dir = 3;
else if (vspd < 0 && (abs(y - mY) > spd))
    dir = 1;

