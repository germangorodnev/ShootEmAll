///bspHallCreate(leaf* lroom, leaf* rroom)
var l = argument[0],
    r = argument[1];
        
var p1x = irandom_range(l.rx + 1, l.rx + l.rw - 2),
    p1y = irandom_range(l.ry + 1, l.ry + l.rh - 2),
    p2x = irandom_range(r.rx + 1, r.rx + r.rw - 2),
    p2y = irandom_range(r.ry + 1, r.ry + r.rh - 2);
    
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

