if (playerInRoom)
    return -1;
var z = instance_place(x, y, oRoomComein);
if (z == noone)
    return 0;
// we're in room' act
with (z)
    event_user(3);
return 1;
