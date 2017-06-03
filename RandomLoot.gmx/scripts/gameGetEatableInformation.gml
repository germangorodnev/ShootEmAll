///gameGetEatableInformation(SINGLEUSE.__ name)
var re = argument[0],
    _arr;
    
/* signature
// 0 - name
// 1 - description
// 2 - sprite
// 3 - image_index
*/
    
_arr[0] = "CONSUMABLE_NAME";
_arr[1] = "CONSUMABLE_DESCRIPTION";
_arr[2] = sPickupEat;
_arr[3] = 0;

var _reinf = gameGetString(1, PICKUP.__EAT, re);

_arr[0] = _reinf[0]; // name
_arr[1] = _reinf[1]; // desc

// sprite
switch (re)
{
case SINGLEUSE.__CHOCO_1:
    _arr[3] = 0;
    break;
case SINGLEUSE.__CHOCO_2:
    _arr[3] = 1;
    break;
case SINGLEUSE.__CHOCO_3:
    _arr[3] = 2;
    break;
case SINGLEUSE.__BEER_1:
    _arr[3] = 3;
    break;
}


return _arr;

