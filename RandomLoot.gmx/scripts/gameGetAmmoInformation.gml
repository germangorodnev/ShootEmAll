var _ammo = argument[0],
    _arr;
/* signature
// 0 - amounts count
1 ... N - amounts
*/

_arr[1] = 0;

switch (_ammo)
{
case AMMO.__BULLET:
    _arr[0] = 2;
    _arr[1] = 20;
    _arr[2] = 40;
    break;
case AMMO.__GRENADES:
    _arr[0] = 1;
    _arr[1] = 1;
    break;
case AMMO.__SHOTGUN:
    _arr[0] = 2;
    _arr[1] = 3;
    _arr[2] = 6;
    break;
case AMMO.__ENERGY:
    _arr[0] = 2;
    _arr[1] = 50;
    _arr[2] = 100;
    break;
}

return _arr;
