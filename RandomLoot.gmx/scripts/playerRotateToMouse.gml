var mkey = controlBit & CONTROL.__KEYMOUSE,
    mgp = controlBit & CONTROL.__GAMEPAD;

if (mkey > 0 && mgp > 0)
{
    //mousedir = point_direction(weaponObj.x, weaponObj.y, mouse_x, mouse_y);
    if (abs(gamepad_axis_value(0, gp_axisrv) >= 0.5)
        || abs(gamepad_axis_value(0, gp_axisrh)) >= 0.5)
        mousedir = median(0, radtodeg(arctan2(gamepad_axis_value(0, gp_axisrv), -gamepad_axis_value(0, gp_axisrh))) + 180, 360);
    if (mousedir > 90 && mousedir < 270)
        xsc = -1;
    else
        xsc = 1;
    if (mousedir < 180)
    {
        image_index = 1;
        mycmp = y - 10;
    }
    else
    {
        image_index = 0 + 2 * (cuckTmr != -1);
        mycmp = y + 10;   
    }
    show_debug_message(string(mousedir));
}
else if (mkey)
{
    mousedir = point_direction(weaponObj.x, weaponObj.y, mouse_x, mouse_y);
    mycmp = mouse_y;
    if (mouse_x < x)
        xsc = -1;
    else
        xsc = 1;
    if (mouse_y < y)
        image_index = 1;
    else
        image_index = 0 + 2 * (cuckTmr != -1);
}
else if (mgp)
{
    if (abs(gamepad_axis_value(0, gp_axisrv) >= 0.5)
        || abs(gamepad_axis_value(0, gp_axisrh)) >= 0.5)
        mousedir = median(0, radtodeg(arctan2(gamepad_axis_value(0, gp_axisrv), -gamepad_axis_value(0, gp_axisrh))) + 180, 360);
    if (mousedir > 90 && mousedir < 270)
        xsc = -1;
    else
        xsc = 1;
    if (mousedir < 180)
    {
        image_index = 1;
        mycmp = y - 1;
    }
    else
    {
        image_index = 0 + 2 * (cuckTmr != -1);
        mycmp = y + 1;   
    }
}
myo = mycmp;
/*var dd = point_direction(x, y, mouse_x, mouse_y);
if (weaponType == WEAPON_TYPE.__RANGE)
    mousedir = point_direction(
    weaponObj.x + lengthdir_x(weaponInf[W_PR.__LDIR_X], dd + weaponInf[W_PR.__LDIR_DIR]),
    weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], dd + weaponInf[W_PR.__LDIR_DIR]* sign(weaponObj.image_yscale)),
    mouse_x, mouse_y);
else
    mousedir = point_direction(x, y, mouse_x, mouse_y);*/


