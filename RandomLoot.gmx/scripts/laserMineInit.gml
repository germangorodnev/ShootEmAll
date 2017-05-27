///laserMineInit(side)
side = argument[0];
var _col = -1;

switch (side)
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
        //y = _arr[3];
        
        // now get the opposite point of laser
        _col = lineGetCollisionPoint(x - LEVEL.TILE_W / 2, y, x - room_width, y, LEVEL.WALL, 1);
    }
    _arr = 0;
    break;
case 1: // top wall
    var _arr = lineGetCollisionPoint(x, y, x, y - 2, LEVEL.WALL, 1);
    if (is_array(_arr))
    {
        y = _arr[3] - LEVEL.TILE_H / 2;
        depth = -y - LEVEL.TILE_H / 2 - 2;
        _col = lineGetCollisionPoint(x, y + LEVEL.TILE_H, x, y + room_height, LEVEL.WALL, 1);
    }
    _arr = 0;
    break;
case 2: // left wall
    var _arr = lineGetCollisionPoint(x, y, x - 3, y, LEVEL.WALL, 1);
    if (is_array(_arr))
    {
        x = _arr[2] + 3;
        depth = -y - 15;
        _col = lineGetCollisionPoint(x + LEVEL.TILE_W / 2, y, x + room_width, y, LEVEL.WALL, 1);
    }
    _arr = 0;
    break;
case 3: // bottom wall
    var _arr = lineGetCollisionPoint(x, y, x, y + 2, LEVEL.WALL, 1);
    if (is_array(_arr))
    {
        y = _arr[3] - 10;
        depth = -y;
        _col = lineGetCollisionPoint(x, y - LEVEL.TILE_H, x, y - room_height, LEVEL.WALL, 1);
    }
    _arr = 0;
    break;
}
if (is_array(_col))
{
    // get the rect 
    var tx1 = _col[0] * LEVEL.TILE_W, 
        ty1 = _col[1] * LEVEL.TILE_H,
        tx2 = tx1 + LEVEL.TILE_W,
        ty2 = ty1 + LEVEL.TILE_H,
        tls = oLevel.colLevel[# _col[0], _col[1]];
    if (tls != undefined) 
    {
        var _mask = tls[| 0];
        tx1 += _mask[2];
        ty1 += _mask[1];
        tx2 -= _mask[0];
        ty2 -= _mask[3];
        var dx = median(tx1, _col[2], tx2),
            dy = median(ty1, _col[3], ty2);
        eX = dx;
        eY = dy;
        // add some more for realism
        eX += lengthdir_x(2, direction);
        eY += lengthdir_y(2, direction);
    }
    else
    {
        eX = x;
        eY = y;
    }        
}
_col = 0;

if (side == 3)
    eY -= LEVEL.TILE_H / 2;
























