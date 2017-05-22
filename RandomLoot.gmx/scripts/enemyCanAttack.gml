//checks besides wall collision and distance
switch (weaponType)
{
case WEAPON_TYPE.__MELEE:
    if (!canAttack)
        return 0;
    if (distance_to_object(target) > weaponAttDist)
        return -1;
    return 1;    
    break;
    
case WEAPON_TYPE.__RANGE:
    if (!weaponObj.canAttack)
        return 0;
    if (distance_to_object(target) > weaponAttDist)
        return -1;
    return 1;
    break;
}
