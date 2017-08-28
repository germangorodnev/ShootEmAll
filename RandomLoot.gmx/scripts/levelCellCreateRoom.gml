///levelCellCreateRoom()
var _rw = oLevel.cellRoomW,
    _rh = oLevel.cellRoomH;
    
var xx = x + irandom_range(1, 1),
    yy = y + irandom_range(1, 1);
    
rm = instance_create(xx, yy, oCellRoom);
switch (size)
{
case 0: // #
    rm.rw = _rw;
    rm.rh = _rh;    
    break;
    
case 1: // ##
    rm.rw = _rw * 2 + 1;
    rm.rh = _rh;    
    break;
    
case 2: // #
        // #
    rm.rw = _rw;
    rm.rh = _rh * 2 + 1; 
    break; 
    
case 3: // ##
        // ##
    rm.rw = _rw * 2 + 1;
    rm.rh = _rh * 2 + 1;     
    break;   
}
rm.number = oLevel.rcnt++;
rm.par = id;
rm.bossRoom = bossRoom;
