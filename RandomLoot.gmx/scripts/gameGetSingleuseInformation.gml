///gameGetSingleuseInformation(SINGLEUSE.__ name)
var su = argument[0],
    _arr;
    
/* signature
// 0 - name
// 1 - description
// 2 - sprite
// 3 - image_index
*/
    
_arr[0] = "SINGLEUSE_NAME";
_arr[1] = "SINGLEUSE_DESCRIPTION";
_arr[2] = sPickupCards;
_arr[3] = su;

var _suinf = gameGetString(1, PICKUP.__SU_CARDS, su);

_arr[0] = _suinf[0];
_arr[1] = _suinf[1];

return _arr;

