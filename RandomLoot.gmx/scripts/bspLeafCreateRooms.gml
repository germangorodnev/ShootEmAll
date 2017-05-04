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
            bspHallCreate(bspGetRoom(leftChild), bspGetRoom(rightChild));
        }
    }
    else
    {
        var mrs = oLevel.minRoomSize;
        var roomSizeX = irandom_range(mrs, w - 1),
            roomSizeY = irandom_range(mrs, h - 1);
        var roomPosX = irandom_range(1, w - roomSizeX - 1),
            roomPosY = irandom_range(1, h - roomSizeY - 1);
        bspRoomCreate(id, x + roomPosX, y + roomPosY, roomSizeX, roomSizeY);            
    }
}
