///crateOpen(crate id, opener id)
var opener = argument[1];
with (argument[0])
{
    cap = 0;
    var xx = x,
        yy = y;
    if (opener.bbox_right < bbox_left)
        xx = bbox_left - LEVEL.TILE_W / 2;
    else if (opener.bbox_left > bbox_right)
        xx = bbox_right + LEVEL.TILE_W / 2;
    if (opener.y < bbox_top)
        yy = bbox_top - LEVEL.TILE_H / 2; 
    else if (opener.y > bbox_bottom)
        yy = bbox_bottom + LEVEL.TILE_H / 2; 
    
    with (instance_create(xx, yy,
        oPickupWeapon))
        pickupableInit(PICKUP.__WEAPON, gameGetRandomWeapon(2), 0);
}
