///maskHitAdd(x1, y1, x2, y2, group)
var x1 = argument[0],
    y1 = argument[1],
    x2 = argument[2],
    y2 = argument[3],
    group = argument[4];

maskHit = instance_create(x + (x1 - sprite_get_xoffset(sprite_index)) * xsc, 
    y + (y1 - sprite_get_yoffset(sprite_index)) * image_yscale, 
    oMaskHit);
ds_list_add(masks, maskHit);

maskHit.group = group;
maskHit.par = id;
maskHit.xx = x1;
maskHit.yy = y1;
var xl = abs(x2 - x1),
    yl = abs(y2 - y1);
maskHit.image_xscale = xl / 32;
maskHit.xsc = maskHit.image_xscale;
maskHit.image_yscale = yl / 32;    

      

