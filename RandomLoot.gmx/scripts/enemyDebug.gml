if (!global.debug)
    exit;
draw_set_colour(c_red);
draw_path(path, x, y, 1);
if (target == noone)
    draw_text(bbox_right, bbox_top - sprite_height - 10, "noone");
else
    draw_text(bbox_right, bbox_top - sprite_height - 10, object_get_name(target.object_index));

switch (state)
{
case ENEMY_STATE.__IDLE: draw_text(bbox_right, y - 20, "Idle"); break;
case ENEMY_STATE.__WALK: draw_text(bbox_right, y - 20, "Walk"); break;
case ENEMY_STATE.__FOLLOW: draw_text(bbox_right, y - 20, "Follow"); break;
}
