///gameWeaponPartGetParams(sprite, index)
var _arr;
// 0 - width
// 1 - height
// 2 - xoff
// 3 - yoff
_arr[3] = 0;
_arr[2] = 0;
switch (argument[0])
{
case sWeaponPartBody:
    switch (argument[1])
    {
    case 0:
        _arr[0] = 43;
        _arr[1] = 9;
        break;
    case 1:
        _arr[0] = 51;
        _arr[1] = 24;
        _arr[3] = 5;
        break;
    case 2:
        _arr[0] = 28;
        _arr[1] = 9;
        break;
    }
    break;

case sWeaponPartScore:
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
    case 2:
        _arr[0] = 23;
        _arr[1] = 27;
        break;
    }
    break;
    
case sWeaponPartOut:
    switch (argument[1])
    {
    case 0:
        _arr[0] = 17;
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
}
return _arr;
