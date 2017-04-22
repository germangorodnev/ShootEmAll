switch (weaponType)
{
case WEAPON_TYPE.__MELEE:
    weaponAngle = (anAngle / anMaxAngle) * weaponMaxAngle;
    break;
case WEAPON_TYPE.__RANGE:
    weaponAngle = mousedir;
    break;
}
