///maskRemoveById(obj id)
var msk = argument[0];
var pos = ds_list_find_index(masks, msk);
ds_list_delete(masks, pos);
with (msk)
    instance_destroy();
