for (var i = 0; i < ds_list_size(masks); i++)
{
    with (masks[| i])
        instance_destroy();
}
ds_list_destroy(masks);
