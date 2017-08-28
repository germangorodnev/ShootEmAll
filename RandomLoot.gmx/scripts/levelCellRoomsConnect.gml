///levelCellRoomsConnect(cell* 1st, cell* 2nd, 0-right\1-top\2-left\3-bottom)
var c1 = argument[0],
    c2 = argument[1],
    dir = argument[2];
    
ds_list_add(c1.connect, c2);
ds_list_add(c2.connect, c1);

var p1x = 0,
    p1y = 0,
    p2x = 0,
    p2y = 0,
    ww = 0,
    hh = 0;

var r1 = c1.rm,
    r2 = c2.rm;
       
switch (dir)
{
case 0: // right
    p1x = r1.x + r1.rw;
    p2x = r2.x;
    var ymin = min(r1.y, r2.y),
        ymax = max(r1.y + r1.rh - 1, r2.y + r2.rh - 1);
    do
    {
        p1y = irandom_range(ymin, ymax);
    } until (
        p1y == median(r1.y, p1y, r1.y + r1.rh - 1)
        && p1y == median(r2.y, p1y, r2.y + r2.rh - 1)
    );
    ww = p2x - p1x;
    hh = 1;
    // now place
    var n = instance_create(p1x, p1y, oFloor);
    n.rw = abs(ww);
    n.rh = hh;
    // lasers
    var dr = laserDoorAdd(p1x * tw + ((p2x - 1 - p1x) div 2) * tw, p1y * th - th / 2, 0,
        c1, c2);
    dr.floorId = n;
    c1.rm.door[0] = dr;
    c2.rm.door[2] = dr;
    //laserDoorAdd(p2x * tw - tw, p1y * th - th / 2, 2);
    break;
case 2: // left
    p1x = r2.x + r2.rw;
    p2x = r1.x;
    var ymin = min(r1.y, r2.y),
        ymax = max(r1.y + r1.rh - 1, r2.y + r2.rh - 1);
    do
    {
        p1y = irandom_range(ymin, ymax);
    } until (
        p1y == median(r1.y, p1y, r1.y + r1.rh - 1)
        && p1y == median(r2.y, p1y, r2.y + r2.rh - 1)
    );
    ww = p2x - p1x;
    hh = 1;
    // now place
    var n = instance_create(p1x, p1y, oFloor);
    n.rw = abs(ww);
    n.rh = hh;
    // lasers
    var dr = laserDoorAdd(p2x * tw + ((p1x - 1 - p2x) div 2) * tw, p1y * th - th / 2, 0,
        c1, c2);
    dr.floorId = n;
    c1.rm.door[2] = dr;
    c2.rm.door[0] = dr;

    //laserDoorAdd(p1x * tw, p1y * th - th / 2, 0);
    //laserDoorAdd(p2x * tw - tw, p1y * th - th / 2, 2);
    break;    
    
case 1: // top
    p1y = r2.y + r2.rh;
    p2y = r1.y;
    var xmin = min(r1.x, r2.x),
        xmax = max(r1.x + r1.rw - 1, r2.x + r2.rw - 1);
    do
    {
        p1x = irandom_range(xmin, xmax);
    } until (
        p1x == median(r1.x, p1x, r1.x + r1.rw - 1)
        && p1x == median(r2.x, p1x, r2.x + r2.rw - 1)
    );
    ww = 1;
    hh = p2y - p1y;
    // now place
    var n = instance_create(p1x, p1y, oFloor);
    n.rw = 1;
    n.rh = abs(hh);
    // lasers
    var dr = laserDoorAdd(p1x * tw, p1y * th + ((p2y - 1 - p1y) div 2) * th, 1,
        c1, c2);
    dr.floorId = n;
    c1.rm.door[1] = dr;
    c2.rm.door[3] = dr;
    break;
case 3: // bottom
    p1y = r1.y + r1.rh;
    p2y = r2.y;
    var xmin = min(r1.x, r2.x),
        xmax = max(r1.x + r1.rw - 1, r2.x + r2.rw - 1);
    do
    {
        p1x = irandom_range(xmin, xmax);
    } until (
        p1x == median(r1.x, p1x, r1.x + r1.rw - 1)
        && p1x == median(r2.x, p1x, r2.x + r2.rw - 1)
    );
    ww = 1;
    hh = p2y - p1y;
    // now place
    var n = instance_create(p1x, p1y, oFloor);
    n.rw = 1;
    n.rh = abs(hh);
    // lasers
    var dr = laserDoorAdd(p1x * tw, p1y * th + ((p2y - p1y - 1) div 2) * th, 3,
        c1, c2);
    dr.floorId = n;
    c1.rm.door[3] = dr;
    c2.rm.door[1] = dr;
    break;
}


