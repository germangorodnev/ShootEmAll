hallType = choose(irandom(1));
switch (hallType)
{
case 0:
    /*
    ###
    ---
    ###
    */
    
    var cx = rx,
        cy = floor(ry + rh / 2);
    var rr = levelRoomAdd(cx, cy, rw, 2);
    rr.cc = make_colour_hsv(180, 255, 100);
    ds_list_add(hallway, rr);    
    return rr;
    break;
    
case 1:
    /*
    #|#
    #|#
    #|#
    */
    
    var cx = floor(rx + rw / 2),
        cy = ry;
    var rr = levelRoomAdd(cx, cy, 2, rh);
    rr.cc = make_colour_hsv(180, 255, 100);
    ds_list_add(hallway, rr);    
    return rr;
    break;
}
