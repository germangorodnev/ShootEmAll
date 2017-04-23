switch (weaponType)
{
case WEAPON_TYPE.__MELEE:
    with(weaponObj)
        image_angle = (anAngle / anMaxAngle) * weaponMaxAngle;
    break;
case WEAPON_TYPE.__RANGE:
    var dd = mousedir;
    with(weaponObj)
        weaponAngle = dd;
    break;
}
