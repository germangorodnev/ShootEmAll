///gamePsysCreate(deactivate on ohter state)
with (oControl)
{
    var _sys = part_system_create();
    var _arr;
    _arr[3] = 2;
    _arr[2] = global.gameState;
    _arr[1] = 1;
    switch (argument_count)
    {
    case 1: _arr[1] = argument[0];
    case 2: _arr[3] = argument[0]; 
        break;    
    }
    _arr[0] = _sys;
    ds_list_add(global.psyses, _arr);
    part_system_automatic_update(_sys, 1);
    part_system_automatic_draw(_sys, 1);
    
    return _sys;
}

