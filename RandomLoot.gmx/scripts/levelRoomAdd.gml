///levelRoomAdd(x, y, w, h)
var n = instance_create(argument[0], argument[1], oRoom);
n.rw = argument[2];
n.rh = argument[3];
return n;
