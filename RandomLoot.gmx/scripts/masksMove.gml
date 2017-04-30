for (var i = 0, cc = ds_list_size(masks); i < cc; i++)
{
    var m = masks[| i];
    if (!instance_exists(m))
        continue;
    if (!m.needmove)
        continue;
    m.x = x + (m.xx - sprite_get_xoffset(sprite_index)) * image_xscale;
    m.y = y + (m.yy - sprite_get_yoffset(sprite_index)) * image_yscale;
    m.image_xscale = m.xsc * image_xscale;
}
/*if (maskKick != noone)
{
var m = maskKick;
m.x = x + masksXoff[3] * image_xscale;
m.y = y + masksYoff[3] * image_yscale;
//m.image_xscale = masksXsc[3] * image_xscale;
}
