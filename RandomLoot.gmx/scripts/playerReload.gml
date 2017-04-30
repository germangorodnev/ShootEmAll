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
    
physicalClearMaskKick();
    
var rldTime = weaponInf[W_PR.__RELOAD_TIME];    

if (rldTime < 0) // relative
{
    var ammoAdd = min(maxAmmo - weaponAmmo, ammo[ammoType]);
    //(макс_магаз - текущ)\макс_магаз * макс_релоад
    rldTime = abs(rldTime);
    var tt = rldTime;
    with (weaponObj)
    {
        reloadTmrNewbull = -1;
        canAttack = 0;
        canAttackTmr = (ammoAdd/maxAmmo) * tt;
        reloadAm = ammoAdd;
        reloadTmrCnt = round(canAttackTmr / reloadAm);
        reloadTmrNewbull = reloadTmrCnt;   
        reloadTmrBegin = canAttackTmr;
    }
    playerWeaponSetState(WEAPON_STATES.__RANGE_RELOAD);
}
else
{
    var ammoAdd = min(maxAmmo, ammo[ammoType]);
    rldTime = abs(rldTime);
    weaponAmmo = 0;
    var tt = rldTime;
    with (weaponObj)
    {
        canAttack = 0;
        canAttackTmr = tt;
        reloadAm = ammoAdd;
        reloadTmrCnt = round(canAttackTmr / reloadAm);
        reloadTmrNewbull = reloadTmrCnt;    
        reloadTmrBegin = canAttackTmr;
    }
    playerWeaponSetState(WEAPON_STATES.__RANGE_RELOAD);
}

