///levelCollisionHelperInit(TILES.__ name, rightOff, topOff, leftOff, bottomOff)
var key = argument[0],
    list = colOffset[? key];
if (list == undefined)
{
    // 1st add
    var arr,
        ls = ds_list_create();
    arr[3] = argument[4];
    arr[2] = argument[3];
    arr[1] = argument[2];
    arr[0] = argument[1];
    ds_list_add(ls, arr);
    ds_map_add(colOffset, key, ls);
}
else
{
    // append
    var arr;
    arr[3] = argument[4];
    arr[2] = argument[3];
    arr[1] = argument[2];
    arr[0] = argument[1];
    ds_list_add(list, arr);
}


