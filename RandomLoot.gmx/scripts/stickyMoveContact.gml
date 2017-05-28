///stickyMoveContact(side)
switch (argument[0])
{
case 0: // right wall
    var _arr = lineGetCollisionPoint(x, y, x + 3, y, LEVEL.WALL, 1);
    if (is_array(_arr))
    {
        /* 0 - x tle,
           1 - y tile, 
           2 - x real
           3 - y real */
        x = _arr[2] - 3;
    }
    _arr = 0;
    break;
case 1: // top wall
    var _arr = lineGetCollisionPoint(x, y, x, y - 2, LEVEL.WALL, 1);
    if (is_array(_arr))
    {
        y = _arr[3] - LEVEL.TILE_H / 2;
        depth = -y - LEVEL.TILE_H / 2 - 2;
    }
    _arr = 0;
    break;
case 2: // left wall
    var _arr = lineGetCollisionPoint(x, y, x - 3, y, LEVEL.WALL, 1);
    if (is_array(_arr))
    {
        x = _arr[2] + 3;
        depth = -y - 15;
    }
    _arr = 0;
    break;
case 3: // bottom wall
    var _arr = lineGetCollisionPoint(x, y, x, y + 2, LEVEL.WALL, 1);
    if (is_array(_arr))
    {
        y = _arr[3] - 10;
        depth = -y;
    }
    _arr = 0;
    break;
}
