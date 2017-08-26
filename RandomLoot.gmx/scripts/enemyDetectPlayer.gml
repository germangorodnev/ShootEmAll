if (!instance_exists(oPlayer))  
    return 0;
var pl = noone,
    reason = 0;
for (var i = 0, ci = global.playersCount; i < ci; i++)
{
    pl = instance_find(oPlayer, i);
    if (distance_to_object(pl) <= dist)
    {
        if (!collisionLine(x, y, pl.x, pl.y, bulletCollideWith, 1))
        {
            target = pl;
            return 1;
        }
        else
            reason = -2;
    }
    else
        rreason = -1;
}
target = noone;
return reason;

