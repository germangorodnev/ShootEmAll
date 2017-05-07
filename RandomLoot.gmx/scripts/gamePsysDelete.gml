///gamePsysDelete(part_system* id)
var _sys = argument[0];
ds_list_delete(global.psyses, ds_list_find_index(global.psyses, _sys));
