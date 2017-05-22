// firstly - set the walls
var lvl = oLevel.level;
for (var i = x, ci = x + rw; i < ci; i++)
{
    lvl[# i, y] |= LEVEL.SOLID;
    mp_grid_add_cell(oLevel.levelPf, i, y);
}
for (var i = y+1, ci = y + rh; i < ci; i++)
{
    lvl[# x, i] |= LEVEL.SOLID;
    mp_grid_add_cell(oLevel.levelPf, x, i);
}

    
for (var i = y+1, ci = y + rh, cx = x + rw - 1; i < ci; i++)
{
    lvl[# cx, i] |= LEVEL.SOLID;
    mp_grid_add_cell(oLevel.levelPf, cx, i);
}
for (var i = x+1, ci = x + rw, cy = y + rh - 1; i < ci; i++)
{
    lvl[# i, cy] |= LEVEL.SOLID; 
    mp_grid_add_cell(oLevel.levelPf, i, cy);
}
    
// now the door
var onleft = position_meeting(bbox_left - 1, y, oPrisonCell),
    ontop = position_meeting(x, bbox_top - 1, oPrisonCell),
    onright = position_meeting(bbox_right + 1, y, oPrisonCell),
    onbottom = position_meeting(x, bbox_bottom + 1, oPrisonCell);
if (!onleft)
{
    if (!ontop)
    {
        if (choose(0, 1))
            // door on the left
            levelPrisonCellGenerateDoor(2);
        else
            // door on the top
            levelPrisonCellGenerateDoor(1);
    }
    else
    {
        if (!onbottom)
        {
            if (choose(0, 1))
                // door on the left
                levelPrisonCellGenerateDoor(2);
            else
                // door on the bottom
                levelPrisonCellGenerateDoor(3);
        }
        else
            // door on the left
            levelPrisonCellGenerateDoor(2);
    }   
}
if (!onright)
{
    if (!ontop)
    {
        if (choose(0, 1))
            // door on the right
            levelPrisonCellGenerateDoor(0);
        else
            // door on the top
            levelPrisonCellGenerateDoor(1);
    }
    else
    {
        if (!onbottom)
        {
            if (choose(0, 1))
                // door on the right
                levelPrisonCellGenerateDoor(0);
            else
                // door on the bottom
                levelPrisonCellGenerateDoor(3);
        }
        else
            // door on the right
            levelPrisonCellGenerateDoor(0);
    }   
}

// concrete
for (var i = x; i < x + rw; i++)
    for (var j = y+1; j < y + rh; j++)
    {
        var tile = tile_layer_find(oLevel.floorD, i*tw, j*th);
        if (tile != -1)
            tile_delete(tile);
        tile_add(tlsPrison, tw*4, th*1, tw, th, i*tw, j*th, oLevel.floorD);   
    }
        

// now the carpet
if (pos & 1)
{
    var hf = -3;
    tile_add(tlsPrisonCarpet, 0, 0, tw*2, th, (x + 1)*tw-6, (y+1)*th+hf, oLevel.carpetD);
    tile_add(tlsPrisonCarpet, tw, 0, tw*2, th, (x + 3)*tw-6, (y+1)*th+hf, oLevel.carpetD);
    
    tile_add(tlsPrisonCarpet, 0, th*1, tw*2, th, (x + 1)*tw-6, (y+2)*th+hf, oLevel.carpetD);
    tile_add(tlsPrisonCarpet, tw, th*1, tw*2, th, (x + 3)*tw-6, (y+2)*th+hf, oLevel.carpetD);
    
    tile_add(tlsPrisonCarpet, 0, th*2, tw*2, th, (x + 1)*tw-6, (y+3)*th+hf, oLevel.carpetD);
    tile_add(tlsPrisonCarpet, tw, th*2, tw*2, th, (x + 3)*tw-6, (y+3)*th+hf, oLevel.carpetD);
}
else
{
    switch (choose(0, 1))
    {
    case 0:
        var hf = -3;
        var yof = (y+1)*th+hf;
        tile_add(tlsPrisonCarpet, 0, 0, tw*2, th, (x)*tw-3, yof, oLevel.carpetD);
        tile_add(tlsPrisonCarpet, tw, 0, tw, th, (x + 2)*tw-3, yof, oLevel.carpetD);
        tile_add(tlsPrisonCarpet, tw, 0, tw*2, th, (x + 3)*tw-3, yof, oLevel.carpetD);
        yof = (y+2)*th+hf;
        tile_add(tlsPrisonCarpet, 0, th*1, tw*2, th, (x)*tw-3, yof, oLevel.carpetD);
        tile_add(tlsPrisonCarpet, tw, th*1, tw, th, (x + 2)*tw-3, yof, oLevel.carpetD);
        tile_add(tlsPrisonCarpet, tw, th*1, tw*2, th, (x + 3)*tw-3, yof, oLevel.carpetD);
        yof = (y+3)*th+hf;
        tile_add(tlsPrisonCarpet, 0, th*2, tw*2, th, (x)*tw-3, yof, oLevel.carpetD);
        tile_add(tlsPrisonCarpet, tw, th*2, tw, th, (x + 2)*tw-3, yof, oLevel.carpetD);
        tile_add(tlsPrisonCarpet, tw, th*2, tw*2, th, (x + 3)*tw-3, yof, oLevel.carpetD);
        break;
    case 1:
        var hf = -3;
        var yof = (y+1)*th+hf;
        tile_add(tlsPrisonCarpet, 0, 0, tw*1, th*3, (x)*tw+tw/2, yof, oLevel.carpetD);
        tile_add(tlsPrisonCarpet, tw*2, 0, tw*1, th*3, (x+1)*tw+tw/2, yof, oLevel.carpetD);
        break;
    }
}

// now indoor
levelPrisonSetIndoor();

    
