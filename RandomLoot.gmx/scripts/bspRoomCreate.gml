///bspRoomCreate(leaf*, x, y, w, h)
with (argument[0])
{
    rm = 1;
    rx = argument[1];
    ry = argument[2];
    rw = argument[3];
    rh = argument[4];
    // tile it 
    bspTileRoom(rx, ry, rw, rh);
    var rr = levelRoomAdd(rx, ry, rw, rh);
    //rr.cc = make_colour_hsv(irandom(50), 50, irandom(255));
    return rr;
}
