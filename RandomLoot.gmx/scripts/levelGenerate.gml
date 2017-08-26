/*
APPROACH:
1. split room into blocks 
2. merge some rooms to make big one
3. generate room in each block
4. connect rooms
5. tile everything 
6. create zones\rooms
7. tile new rooms
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

// fill black zones
//rectCnt = instance_number(oCellRoom) + instance_number(oFloor);
var WALLW = 8,
    WALLH = 6,
    TRIGGER_XOFF = 5,
    TRIGGER_YOFF = 5;
with (oFloor)
{
    var p = oLevel.rectCnt++;
    blIndex = p;
    var xadd = 0, yadd = 0;
    if (rw > rh) // horizontal
        yadd = WALLH;
    else // vertical
        xadd = WALLW;
    oLevel.rX1[p] = x * tw - xadd;
    oLevel.rY1[p] = y * th - th;
    oLevel.rX2[p] = oLevel.rX1[p] + rw * tw + xadd * 2;
    oLevel.rY2[p] = oLevel.rY1[p] + rh * th + yadd;
    oLevel.rA[p] = 1;       
    oLevel.rState[p] = -1;
}

with (oCellRoom)
{
    var p = oLevel.rectCnt++;
    ind = p;
    var _id = id;
    with (oLevelDoor)
    {
        if (room1 == _id)
            room1 = p;
        else if (room2 == _id)
            room2 = p;
    }
    var realx = x * tw,
        realy = y * th;
    oLevel.rX1[p] = realx - WALLW;
    oLevel.rY1[p] = realy - th;// - WALLH;
    oLevel.rX2[p] = oLevel.rX1[p] + rw * tw + WALLW * 2;
    oLevel.rY2[p] = oLevel.rY1[p] + rh * th + WALLH;
    oLevel.rA[p] = 1;
    oLevel.rState[p] = -1;
    
    // create the trigger
    var cmi = instance_create(realx + TRIGGER_XOFF, realy + TRIGGER_YOFF, oRoomComein);
    cmi.image_xscale = (rw * tw - TRIGGER_XOFF * 2) / 32;
    cmi.image_yscale = (rh * th - TRIGGER_YOFF * 2) / 32;
    // set black zones
    // main room
    roomComeinBlackZoneAdd(cmi, p);
    // halls now
    for (var i = 0; i < 4; i++)
    {
        if (door[i] == noone)
            continue;
        var fl = door[i].floorId;
        roomComeinBlackZoneAdd(cmi, fl.blIndex);
    }
    // set room field
    cmi.roomX1 = realx// - tw;
    cmi.roomY1 = realy// - th;
    cmi.roomX2 = cmi.roomX1 + (rw * tw)// + tw;
    cmi.roomY2 = cmi.roomY1 + (rh * th)// + th;
}



// Phase 5 - all tiled
levelTileAll();

// Phase 6 - rooms
levelGenerateRooms();

// Phase 7 - tile the rooms
levelTileRooms();


with (oCell)
    instance_destroy();
with (oFloor)
    instance_destroy();
with (oPrisonCell)
    instance_destroy();
    


