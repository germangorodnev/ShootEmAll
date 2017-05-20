///playerControlledLineDelete(player id, our id)
with (argument[0])
{
    var pos = ds_list_find_index(longbulls, argument[1]);
    ds_list_delete(longbulls, pos);
}
