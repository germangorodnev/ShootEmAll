///laserFindCollisionPoint(bitmask collide)
eX = x + lengthdir_x(5000, direction);
eY = y + lengthdir_y(5000, direction);
var _arr = lineGetCollisionPoint(x, y, eX, eY, argument[0]);
if (is_array(_arr))
{
    // get the rect 
    var tx1 = _arr[0] * LEVEL.TILE_W, 
        ty1 = _arr[1] * LEVEL.TILE_H,
        tx2 = tx1 + LEVEL.TILE_W,
        ty2 = ty1 + LEVEL.TILE_H,
        tls = oLevel.colLevel[# _arr[0], _arr[1]];
    if (tls != undefined) 
    {
        var _mask = tls[| 0];
        tx1 += _mask[2];
        ty1 += _mask[1];
        tx2 -= _mask[0];
        ty2 -= _mask[3];
        var dx = median(tx1, _arr[2], tx2),
            dy = median(ty1, _arr[3], ty2);
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
_arr = 0;
speed = 0;

