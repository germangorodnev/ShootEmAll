if (weapon == WEAPONS.__NONE)
    exit;
if (weaponType == WEAPON_TYPE.__MELEE)
    exit;
if (weaponObj.state == WEAPON_STATES.__RANGE_SHOT)
    exit;
if (weaponObj.state == WEAPON_STATES.__RANGE_RELOAD)
    exit;

var maxAmmo = weaponInf[W_PR.__SCORE_SIZE];

if (weaponAmmo == maxAmmo)
    exit; // no need
    
var ammoType = weaponInf[W_PR.__BULLET_TYPE];
if (ammo[ammoType] == 0
    || ((ammo[ammoType] < (maxAmmo - weaponAmmo)) && (maxAmmo == weaponInf[W_PR.__BULLETS_PER_SHOT])))
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
        reloadAddFinal = reloadAm;
        reloadTmrCnt = (canAttackTmr / reloadAm);//round(canAttackTmr / reloadAm);
        reloadAdd = 1;
        if (reloadTmrCnt < 1)
        {
            reloadTmrCnt *= 2;
            reloadAdd++;
        }
        show_debug_message("CA: " + string(canAttackTmr) +
            " Rld cnt: " + string(reloadAm) + "  TIMER: " + string(reloadTmrCnt));
        reloadTmrNewbull = reloadTmrCnt;    
        reloadTmrBegin = canAttackTmr;
    }
    playerWeaponSetState(WEAPON_STATES.__RANGE_RELOAD);
}

