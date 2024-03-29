///bspLeafCreateRooms(leaf id)
with (argument[0])
{
    if (leftChild != noone || rightChild != noone)
    {
        if (leftChild != noone)
            bspLeafCreateRooms(leftChild);
        if (rightChild != noone)
            bspLeafCreateRooms(rightChild);
            
        if (leftChild != noone && rightChild != noone)
        {
            var r1 = bspGetRoom(leftChild),
                r2 = bspGetRoom(rightChild);
            if (!levelRoomsAreConnected(r1, r2))
                bspHallCreate(r1, r2);
        }
    }
    else
    {
        var mrs = oLevel.minRoomSize;
        var roomSizeX = irandom_range(mrs, w - 2),
            roomSizeY = irandom_range(mrs, h - 2);
        var roomPosX = irandom_range(1, w - roomSizeX - 1),
            roomPosY = irandom_range(1, h - roomSizeY - 1);
        rm = bspRoomCreate(id, x + roomPosX, y + roomPosY, roomSizeX, roomSizeY);  
        rm.number = oLevel.rcnt++;          
    }
}
