global.debug = argument0;
with (oMaskHit)
    visible = global.debug;
with (oWall)
    visible = global.debug;
with (oMaskHit)
    visible = global.debug;
with (oMaskAttack)
    visible = global.debug;
with (oCamera)
    if (global.debug)
    {
        image_blend = c_red;
        sprite_index = sMask32x32;
    }
    else
        sprite_index = -1;
    
