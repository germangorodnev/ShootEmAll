///pointColGrid(x, y, cellX, cellY)
var xx = argument[0],
    yy = argument[1],
    tls = oLevel.colLevel[# median(0, argument[2], oLevel.ww - 1), median(0, argument[3], oLevel.hh - 1)],
    tx1 = argument[2] * LEVEL.TILE_W,
    ty1 = argument[3] * LEVEL.TILE_H,
    tx2 = tx1 + LEVEL.TILE_W,
    ty2 = ty1 + LEVEL.TILE_H;
//DeltaX = CircleX - Max(RectX, Min(CircleX, RectX + RectWidth));
//DeltaY = CircleY - Max(RectY, Min(CircleY, RectY + RectHeight));
//return (DeltaX * DeltaX + DeltaY * DeltaY) < (CircleRadius * CircleRadius);    
if (tls != undefined)
{
    var _mask = tls[| 0];
    tx1 += _mask[2];
    ty1 += _mask[1];
    tx2 -= _mask[0];
    ty2 -= _mask[3];
    //var dx = xx - median(tx1, _arr[2], tx2),
    //    dy = yy - median(ty1, _arr[3], ty2);
    return (point_in_rectangle(xx, yy, tx1, ty1, tx2, ty2));
}
else
    return 0; // not col
