//checks besides wall collision and distance
switch (weaponType)
{
case WEAPON_TYPE.__MELEE:
    if (distance_to_object(target) > weaponAttDist)
        return -1;
    if (!canAttack)
        return 0;
    return 1;    
    break;
    
case WEAPON_TYPE.__RANGE:
    if (distance_to_object(target) > weaponAttDist)
        return -1;
    if (!weaponObj.canAttack)
        return 0;
    return 1;
    break;
}
return 0;
