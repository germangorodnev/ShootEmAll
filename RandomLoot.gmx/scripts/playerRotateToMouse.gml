mousedir = point_direction(weaponObj.x, weaponObj.y, mouse_x, mouse_y);
/*var dd = point_direction(x, y, mouse_x, mouse_y);
if (weaponType == WEAPON_TYPE.__RANGE)
    mousedir = point_direction(
    weaponObj.x + lengthdir_x(weaponInf[W_PR.__LDIR_X], dd + weaponInf[W_PR.__LDIR_DIR]),
    weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], dd + weaponInf[W_PR.__LDIR_DIR]* sign(weaponObj.image_yscale)),
    mouse_x, mouse_y);
else
    mousedir = point_direction(x, y, mouse_x, mouse_y);*/
if (mouse_x < x)
    xsc = -1;
else
    xsc = 1;
if (mouse_y < y)
    image_index = 1;
else
    image_index = 0 + 2 * (cuckTmr != -1);

