var dSpr = sDebuffIcons,
    dI = 0,
    dX = x,
    dY = maskHit.bbox_top - 15;
for (var i = 0; i < ds_list_size(debuffs); ++i)
{
    var _arr = debuffs[| i];
    switch (_arr[@ 0])
    {
    case DEBUFFS.__POISION:
        dI = 0;
        break;
    }
    
    draw_sprite_ext(dSpr, dI, dX, dY, 1, 1, 0, image_blend, image_alpha);
}
