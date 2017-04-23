if (!global.debug)
    exit;
draw_text(bbox_right, bbox_top - 20, string("cannot shoot: " + string(weaponObj.canAttackTmr)));
