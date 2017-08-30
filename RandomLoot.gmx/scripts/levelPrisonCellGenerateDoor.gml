///levelPrisonCellGenerateDoor(0-right\1-top\2-left\3-bot)
var dir = argument[0],
    xpos = x,
    ypos = y,
    dr = noone;
    
switch (dir)
{
case 0: // right
    xpos = x + rw - 1;
    ypos = y + 2; //irandom_range(y + 2, y + rh - 2);
    oLevel.level[# xpos, ypos] &= ~LEVEL.SOLID;
    mp_grid_clear_cell(oLevel.levelPf, xpos, ypos);
    dr = instance_create(xpos*tw, ypos*th, oPrisonDoor);
    dr.depth = -ypos - th;
    dr.type = 0;
    break;
case 1: // top
    xpos = irandom_range(x + 1 + (pos & 1), x + rw - 2);
    ypos = y;
    oLevel.level[# xpos, ypos] &= ~LEVEL.SOLID;
    mp_grid_clear_cell(oLevel.levelPf, xpos, ypos);
    dr = instance_create(xpos*tw, ypos*th, oPrisonDoor);
    dr.depth = -ypos - th;    
    dr.type = 1;
    break;
case 2: // left
    xpos = x;
    ypos = y + 2; //irandom_range(y + 1, y + rh - 2);
    oLevel.level[# xpos, ypos] &= ~LEVEL.SOLID;
    mp_grid_clear_cell(oLevel.levelPf, xpos, ypos);
    dr = instance_create(xpos*tw, ypos*th, oPrisonDoor);
    dr.depth = -ypos - th;
    dr.type = 2;
    break;
case 3: // bot
    xpos = irandom_range(x + 1 + (pos & 1), x + rw - 2);
    ypos = y + rh - 1;
    oLevel.level[# xpos, ypos] &= ~LEVEL.SOLID;
    mp_grid_clear_cell(oLevel.levelPf, xpos, ypos);
    dr = instance_create(xpos*tw, ypos*th, oPrisonDoor);
    dr.depth = -ypos - th;
    dr.type = 3;
    break;
}
doorPos = dir;

doorPosX = xpos;
doorPosY = ypos;

with (dr)
    levelPrisonCellDoorInit();

