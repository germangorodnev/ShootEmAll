///bspHallCreate(room* lroom, room* rroom)
var l = argument[0],
    r = argument[1];
/*if (ds_list_find_index(l.connect, r) != -1
    || ds_list_find_index(r.connect, l) != -1)
        exit;
ds_list_add(l.connect, r);
ds_list_add(r.connect, l);*/
            
var p1x = irandom_range(l.x + 1, l.x + l.rw - 2),
    p1y = irandom_range(l.y + 1, l.y + l.rh - 2),
    p2x = irandom_range(r.x + 1, r.x + r.rw - 2),
    p2y = irandom_range(r.y + 1, r.y + r.rh - 2);
/*do
{
    p1x = irandom_range(l.x + 1, l.x + l.rw - 2);
    p1y = irandom_range(l.y + 1, l.y + l.rh - 2);
    p2x = irandom_range(r.x + 1, r.x + r.rw - 2);
    p2y = irandom_range(r.y + 1, r.y + r.rh - 2);
} until (
    (p1x == median(r.x  , p1x, r.x + r.rw - 1)
    || p2x == median(l.x, p2x, l.x + l.rw - 1))
    || (p1y == median(r.y , p1y, r.y + r.rh - 1)
    || p2y == median(l.y , p2y, l.y + l.rh - 1))
    );*/
    
var _w = sign(p2x - p1x) * ceil(abs(p2x - p1x)), 
    _h = sign(p2y - p1y) * ceil(abs(p2y - p1y));
    
if (_w < 0)
{
    if (_h < 0)
    {
        if (random(1) > .5)
        {
            bspHallAddRect(p2x, p1y, abs(_w), 1);
            bspHallAddRect(p2x, p2y, 1, abs(_h));
        }
        else
        {
            bspHallAddRect(p2x, p2y, abs(_w), 1);
            bspHallAddRect(p1x, p2y, 1, abs(_h));        
        }
    }
    else if (_h > 0)
    {
        if (random(1) < .5)
        {
            bspHallAddRect(p2x, p1y, abs(_w), 1);
            bspHallAddRect(p2x, p1y, 1, abs(_h));
        }
        else
        {
            bspHallAddRect(p2x, p2y, abs(_w), 1);
            bspHallAddRect(p1x, p1y, 1, abs(_h));        
        }
    }
    else
    {
        if (collision_line(p2x, p2y, p2x+abs(_w), p2y + 1, oRoom, 0, 0) == noone)
            bspHallAddRect(p2x, p2y, abs(_w), 1);
    }
}
else if (_w > 0)
{
    if (_h < 0)
    {
        if (random(1) > .5)
        {
            bspHallAddRect(p1x, p2y, abs(_w), 1);
            bspHallAddRect(p1x, p2y, 1, abs(_h));
        }
        else
        {
            bspHallAddRect(p1x, p1y, abs(_w), 1);
            bspHallAddRect(p2x, p2y, 1, abs(_h));        
        }
    }
    else if (_h > 0)
    {
        if (random(1) < .5)
        {
            bspHallAddRect(p1x, p1y, abs(_w), 1);
            bspHallAddRect(p2x, p1y, 1, abs(_h));
        }
        else
        {
            bspHallAddRect(p1x, p2y, abs(_w), 1);
            bspHallAddRect(p1x, p1y, 1, abs(_h));        
        }
    }
    else
    {
        if (collision_line(p1x, p1y, p1x+abs(_w), p1y + 1, oRoom, 0, 0) == noone)
            bspHallAddRect(p1x, p1y, abs(_w), 1);
    }
}
else
{
    if (_h < 0)
    {
        bspHallAddRect(p2x, p2y, 1, abs(_h));
    }
    else if (_h > 0)
    {
        bspHallAddRect(p1x, p1y, 1, abs(_h));
    }
}

