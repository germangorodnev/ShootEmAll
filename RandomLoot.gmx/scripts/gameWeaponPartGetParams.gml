///gameWeaponPartGetParams(sprite, index)
var _arr;
// 0 - width
// 1 - height
_arr[1] = 0;
switch (argument[0])
{
case sWeaponPartBody:
    switch (argument[1])
    {
    case 0:
        _arr[0] = 51;
        _arr[1] = 10;
        break;
    case 1:
        _arr[0] = 22;
        _arr[1] = 6;
        break;
    case 2:
        _arr[0] = 60;
        _arr[1] = 6;
        break;
    }
    break;

case sWeaponPartBack:
    switch (argument[1])
    {
    case 0:
        _arr[0] = 51;
        _arr[1] = 10;
        break;
    case 1:
        _arr[0] = 22;
        _arr[1] = 6;
        break;
    case 2:
        _arr[0] = 60;
        _arr[1] = 6;
        break;
    }
    break;

case sWeaponPartHand:
    switch (argument[1])
    {
    case 0:
        _arr[0] = 24;
        _arr[1] = 22;
        break;
    case 1:
        _arr[0] = 8;
        _arr[1] = 11;
        break;
    }
    break;
    
case sWeaponPartOut:
    switch (argument[1])
    {
    case 0:
        _arr[0] = 20;
        _arr[1] = 11;
        break;
    case 1:
        _arr[0] = 22;
        _arr[1] = 6;
        break;
    case 2:
        _arr[0] = 60;
        _arr[1] = 6;
        break;
    }
    break;
}
return _arr;
