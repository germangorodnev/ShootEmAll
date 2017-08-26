///enemySetPoison(time in steps, dmg timer, dmgmin, dmgmax)
var _arr;
_arr[5] = 0;

_arr[0] = DEBUFFS.__POISION;
_arr[1] = argument[0]; // timer final (steps)
_arr[2] = 0; // timer next pop (steps)
_arr[3] = argument[1]; // timer next pop count (steps)
_arr[4] = argument[2]; // dmg min
_arr[5] = argument[3]; // dmg max

_arr[2] = _arr[3];
ds_list_add(debuffs, _arr);

