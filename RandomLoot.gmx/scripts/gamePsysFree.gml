for (var i = 1, syses = global.psyses; i < ds_list_size(syses); i++)
{
    var val = syses[| pos];
    part_system_destroy(val[0]);
}
