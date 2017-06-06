if (!global.debug)
    exit;
//draw_text(bbox_right, bbox_top - 20, string("cannot shoot: " + string(weaponObj.canAttackTmr)));
if (weaponType == WEAPON_TYPE.__RANGE) 
    draw_circle_colour(weaponObj.x + lengthdir_x(weaponInf[W_PR.__LDIR_X], weaponObj.image_angle + weaponInf[W_PR.__LDIR_DIR]),
        weaponObj.y + lengthdir_y(weaponInf[W_PR.__LDIR_Y], weaponObj.image_angle - weaponInf[W_PR.__LDIR_DIR] * sign(weaponObj.image_yscale)), 
        3, c_red, c_red, 0);
/*switch (weaponObj.state)
{
case WEAPON_STATES.__MELEE_UP:
    draw_text(bbox_right, bbox_top - 5, string("weaponstate: melee up"));
    break;
case WEAPON_STATES.__MELEE_DOWN:
    draw_text(bbox_right, bbox_top - 5, string("weaponstate: melee down"));
    break;
case WEAPON_STATES.__MOVE:
    draw_text(bbox_right, bbox_top - 5, string("weaponstate: move"));
    break;
case WEAPON_STATES.__RANGE_SHOT:
    draw_text(bbox_right, bbox_top - 5, string("weaponstate: range shot"));
    break;
case WEAPON_STATES.__RANGE_RELOAD:
    draw_text(bbox_right, bbox_top - 5, string("weaponstate: range reload"));
    break;
}
draw_text(bbox_right + 10, bbox_top + 15, string(weaponObj.animIndex));
