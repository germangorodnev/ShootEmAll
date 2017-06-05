switch (weapon)
{
case WEAPONS.__CUSTOM:
    var wpp = weapon,
        amm = weaponAmmo,
        ref = id;
    with (instance_create(x, y, oPickupWeapon))
    {
        pickupableInit(PICKUP.__WEAPON, wpp, amm, 0);
        params = ref.weaponInf;
        SPRITE = params[W_PR.__RANGE_CNT]; 
        sprite_index = SPRITE;
        ammo = amm;
    }
    weapon = WEAPONS.__NONE;
    break;
default:
    var wpp = weapon,
        amm = weaponAmmo;
    with (instance_create(x, y, oPickupWeapon))
        pickupableInit(PICKUP.__WEAPON, wpp, amm);
    weapon = WEAPONS.__NONE;
    break;
}
