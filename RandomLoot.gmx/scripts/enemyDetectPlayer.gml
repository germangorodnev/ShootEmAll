if (!instance_exists(oPlayer))  
    return 0;
if (distance_to_object(oPlayer) <= dist)
{
    if (!collisionLine(weaponObj.x, weaponObj.y, oPlayer.x, oPlayer.y, bulletCollideWith))
    {
        return 1;
    }
    else
        return -2;
}
else
    return -1;
return 0;
