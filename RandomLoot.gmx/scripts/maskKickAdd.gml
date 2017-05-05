///maskKickAdd(x1, y1, x2, y2, group, delete other)
var x1 = argument[0],
    y1 = argument[1],
    x2 = argument[2],
    y2 = argument[3],
    group = argument[4];
if (argument[5])
{
    if (maskKick != noone)
    {
        maskRemoveById(maskKick);
        maskKick = noone;
    }
    maskKick = instance_create(x + (x1 - sprite_get_xoffset(sprite_index)) * xsc, 
        y + (y1 - sprite_get_yoffset(sprite_index)) * image_yscale, 
        oMaskAttack);
    ds_list_add(masks, maskKick);
    
    maskKick.group = group;
    maskKick.par = id;
    maskKick.xx = x1;
    maskKick.yy = y1;
    var xl = abs(x2 - x1),
        yl = abs(y2 - y1);
    maskKick.image_xscale = xl / 32;
    maskKick.xsc = maskKick.image_xscale;
    maskKick.image_yscale = yl / 32;             
}
else
{
    // just add
    var newm = instance_create(x + (x1 - sprite_get_xoffset(sprite_index)) * xsc, 
        y + (y1 - sprite_get_yoffset(sprite_index)) * image_yscale, 
        oMaskAttack);
    ds_list_add(masks, newm);
    
    newm.group = group;
    newm.par = id;
    newm.xx = x1;
    newm.yy = y1;
    var xl = abs(x2 - x1),
        yl = abs(y2 - y1);
    newm.image_xscale = xl / 32;
    newm.xsc = newm.image_xscale;
    newm.image_yscale = yl / 32;                 
}
