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
var sn = "";
switch (state)
{
case ENEMY_STATE.__FOLLOW:
    sn = "follow";
    break;
case ENEMY_STATE.__IDLE:
    sn = "idle"; break;
}
if (dir != dd)
{
    show_debug_message("hspd: " + string(hspd) + " v: " + string(vspd));
    show_debug_message("state " + sn + ": from " + string(dd) + " to " + string(dir));
}
