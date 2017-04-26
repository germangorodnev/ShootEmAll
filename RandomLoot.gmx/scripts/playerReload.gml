if (weapon == WEAPONS.__NONE)
    exit;
if (weaponType == WEAPON_TYPE.__MELEE)
    exit;

var maxAmmo = weaponInf[W_PR.__SCORE_SIZE];

if (weaponAmmo == maxAmmo)
    exit; // no need
    
var ammoType = weaponInf[W_PR.__BULLET_TYPE];
if (ammo[ammoType] == 0)
    exit; // no ammo
    
var rldTime = weaponInf[W_PR.__RELOAD_TIME],    
    ammoAdd = min(maxAmmo - weaponAmmo, ammo[ammoType]);

if (rldTime < 0) // relative
{
    //(макс_магаз - текущ)\макс_магаз * макс_релоад
    rldTime = abs(rldTime);
    with (weaponObj)
    {
        canAttack = 0;
        canAttackTmr = (ammoAdd/maxAmmo) * rldTime;
        reloadAm = ammoAdd;
        reloadTmr = canAttackTmr / reloadAm;    
    }
    playerWeaponSetState(WEAPON_STATES.__RANGE_RELOAD);
}
else
{
    rldTime = abs(rldTime);
    with (weaponObj)
    {
        canAttack = 0;
        canAttackTmr = rldTime;
        reloadAm = ammoAdd;
        reloadTmr = canAttackTmr / reloadAm;    
    }
    playerWeaponSetState(WEAPON_STATES.__RANGE_RELOAD);
}

