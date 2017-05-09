/*
APPROACH:
1. split room into blocks 
2. merge some rooms to make big one
3. generate room in each block
4. connect rooms
5. tile everything 
*/

// Phase 1 - splitting
var cw = cellW,
    ch = cellH;

for (var i = 0; i < ww; i += cw)
{
    for (var j = 0; j < hh; j += ch)
    {
        //var _cw = cw,
        //    _ch = ch;
        //if (i + _cw >= rw
        //    || j + _ch >= rh)
        //        continue;
        var _cw = min(abs(ww-i), cw),
            _ch = min(abs(hh-j), ch);
        var rr = levelCellCreate(i, j, _cw, _ch);
    }
}

// Phase 3 - merging rooms
for (var i = 0; i < instance_number(oCell); i++)
{
    with (instance_find(oCell, i))
    {
    if (size != 0)
        continue;
    var mergevar = choose(0, 1, 2);
    
    ////////////////////////////////////////////////// do not merge //////////////////////////////////////////////////
    if (mergevar == 0) // dont merge at all
        continue;
        
    ////////////////////////////////////////////////// one side merge //////////////////////////////////////////////////        
    if (mergevar == 1) // right\top\bot\left
    {
        var dir = 0,
            try = 0,
            done = 0;
        while (!done 
            && try < 5
            && dir < 4)
        {
            switch (dir)
            {
            case 0: // merge with right
                var right = instance_position(bbox_right + 1, y, oCell);   
                if (right != noone && right.size == 0)
                {
                    var new = levelCellCreate(x, y, rw + right.rw, rh, 1);
                    var ccv = irandom(200);
                    new.cc = make_colour_rgb(ccv, ccv, ccv);                    
                    with (right)
                        instance_destroy();
                    done = 1; 
                    instance_destroy();     
                }
                break;
            case 1: // left
                var left = instance_position(bbox_left - 1, y, oCell);   
                if (left != noone && left.size == 0)
                {
                    var new = levelCellCreate(left.x, left.y, rw + left.rw, rh, 1);
                    var ccv = irandom(200);
                    new.cc = make_colour_rgb(ccv, ccv, ccv);                    
                    with (left)
                        instance_destroy();
                    done = 1; 
                    instance_destroy();    
                }
                break;
            case 2: // top
                var top = instance_position(x, bbox_top - 1, oCell);   
                if (top != noone && top.size == 0)
                {
                    var new = levelCellCreate(top.x, top.y, rw, rh + top.rh, 2);
                    var ccv = irandom(200);
                    new.cc = make_colour_rgb(ccv, ccv, ccv);                    
                    with (top)
                        instance_destroy();
                    done = 1; 
                    instance_destroy();     
                }
                break;            
            case 3: // bottom
                var bottom = instance_position(x, bbox_bottom + 1, oCell);   
                if (bottom != noone && bottom.size == 0)
                {
                    var new = levelCellCreate(x, y, rw, rh + bottom.rh, 2);
                    var ccv = irandom(0);
                    new.cc = make_colour_rgb(ccv, ccv, ccv);
                    with (bottom)
                        instance_destroy();
                    done = 1; 
                    instance_destroy();     
                }
                break;            
            }
            dir++;
            try++;
        }
    }
    
    ////////////////////////////////////////////////// square merge //////////////////////////////////////////////////  
    else if (mergevar == 2)
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
            
            with (right)
                instance_destroy();
            with (bottom)
                instance_destroy();
            with (bottomright)
                instance_destroy();  
            instance_destroy();     
        }    
    }
    }
}

// Phase 3 - create rooms
with (oCell)
{
    number = oLevel.cnt++;
    ds_list_add(oLevel.cells, id);
    levelCellCreateRoom();
    visible = 0;
}

// Phase 4 - connect rooms togehter
with (oCell)
{
    var left = instance_position(bbox_left - 1, y, oCell),
        right = instance_position(bbox_right + 1, y, oCell),
        top = instance_position(x, bbox_top - 1, oCell),
        bottom = instance_position(x, bbox_bottom + 1, oCell);
        
    if (right != noone
        && !levelCellsConnected(id, right))
    {
        levelCellRoomsConnect(id, right, 0);
    }
    if (left != noone
        && !levelCellsConnected(id, left))
    {
        levelCellRoomsConnect(id, left, 2);
    }
    if (top != noone
        && !levelCellsConnected(id, top))
    {
        levelCellRoomsConnect(id, top, 1);    
    }
    if (bottom != noone
        && !levelCellsConnected(id, bottom))
    {
        levelCellRoomsConnect(id, bottom, 3);    
    }
}

// Phase 5 - aall tiled
levelTileAll();
