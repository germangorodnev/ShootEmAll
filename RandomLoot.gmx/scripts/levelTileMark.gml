///levelTileMark(x in tiles, y i n tiles, TILES.__ val, [replace])
var xx = argument[0],
    yy = argument[1],
    tile = argument[2],
    collvl = oLevel.colLevel,
    coff = oLevel.colOffset;
    
var ls = collvl[# xx, yy];

if (ls == undefined)
{
    // just add the list
    collvl[# xx, yy] = ds_list_create();
    ds_list_copy(collvl[# xx, yy], coff[? tile]);
}
else
{
    var ltocpy = coff[? tile];
    for (var i = 0, ci = ds_list_size(ltocpy); i < ci; i++)
    {
        ds_list_add(collvl[# xx, yy], ltocpy[| i]);
    }
}
