///gameGetRechargableExplosiveInformation(RECHARGABLE.__ name)
var re = argument[0],
    _arr;
    
/* signature
// 0 - name
// 1 - description
// 2 - sprite
// 3 - image_index
*/
    
_arr[0] = "RECHARGABLE_NAME";
_arr[1] = "RECHARGABLE_DESCRIPTION";
_arr[2] = sLaserMine;
_arr[3] = 0;

var _reinf = gameGetString(1, PICKUP.__RECH_EXPLOSIVES, re);

_arr[0] = _reinf[0]; // name
_arr[1] = _reinf[1]; // desc

// sprite
switch (re)
{
case RECHARGABLE.__LASER_MINE:
    _arr[2] = sLaserMine;
    break;
case RECHARGABLE.__DYNAMITE:
    _arr[2] = sDynamite;
    break;
case RECHARGABLE.__STICKY_GRENADE:
    _arr[2] = sStickyGrenade;
    break;
case RECHARGABLE.__BOOMERANG:
    _arr[2] = sBoomerang;
    break;
}


return _arr;

