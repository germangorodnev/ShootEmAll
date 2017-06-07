if (!instance_exists(oPlayer))  
    return 0;
if (distance_to_object(oPlayer) <= dist)
{
    if (!collisionLine(x, y, oPlayer.x, oPlayer.y, bulletCollideWith, 1))
    {
        return 1;
    }
    else
        return -2;
}
else
    return -1;
return 0;
