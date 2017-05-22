var oth = instance_place(x, y, object_index);
if (oth == noone)
    exit;
if (x == oth.x && y == oth.y)
{
    physicalMoveProp(collideWith, sign(oth.id - id), 0);
}

var dir = point_direction(oth.x, oth.y, x, y);
physicalMoveProp(collideWith, lengthdir_x(1, dir), lengthdir_y(1, dir));
