// Phase 1 - splitting
var cw = cellW,
    ch = cellH;

for (var i = 0; i < ww; i += cw)
{
    for (var j = 0; j < hh; j += ch)
    {
        var _cw = min(abs(ww-i), cw),
            _ch = min(abs(hh-j), ch);
        var rr = levelCellCreate(i, j, _cw, _ch);
    }
}

// Phase 3 - merging rooms
// but first -- make 100% 2x2 boss room
var xoff = irandom(1),
    yoff = irandom(1);
var mcell = instance_position(xoff * cw + 3, yoff * ch * 3 + 3, oCell);
with (mcell)
{
    var right = instance_position(bbox_right + 1, y, oCell),
        bottom = instance_position(x, bbox_bottom + 1, oCell),
        bottomright = instance_position(bbox_right + 1, bbox_bottom + 1, oCell);   
    if (right != noone && right.size == 0
        && bottom != noone && bottom.size == 0
        && bottomright != noone && bottomright.size == 0)
    {
        var new = levelCellCreate(x, y, rw + right.rw, rh + bottom.rh, 3);
        var ccv = irandom(200);
        new.cc = make_colour_rgb(ccv, ccv, ccv);
        new.bossRoom = 1;
        
        with (right)
            instance_destroy();
        with (bottom)
            instance_destroy();
        with (bottomright)
            instance_destroy();  
        instance_destroy();     
    }  
}

