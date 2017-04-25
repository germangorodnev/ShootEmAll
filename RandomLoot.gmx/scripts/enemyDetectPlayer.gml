if (!instance_exists(oPlayer))  
    return 0;
if (distance_to_object(oPlayer) <= dist)
{
    if (collision_line(x, y, oPlayer.x, oPlayer.y, oSolidObject, 0, 0) == noone)
    {
        return 1;
    }
}
return 0;
