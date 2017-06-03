///gamePsysDelete(part_system* id)
var _sys = argument[0],
    pos = -1;
for (var i = 1, syses = global.psyses, ci = ds_list_size(global.psyses); i < ci; i++)
{
    var _arr = syses[| i];
    if (_arr[@ 0] == _sys)
    {
        pos = i;
        //break;
    }
}
part_system_destroy(_sys);
ds_list_delete(global.psyses, pos);

