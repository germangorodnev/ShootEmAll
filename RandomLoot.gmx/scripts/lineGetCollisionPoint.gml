///lineGetCollisionPoint(x1, y1, x2, y2, bitmask collideWith, [ precise = 0 ])
var x1 = round(argument[0]),
    y1 = round(argument[1]),
    x2 = round(argument[2]),
    y2 = round(argument[3]),
    col = argument[4],
    prec = 0,
    lvl = oLevel.level,
    tw = LEVEL.TILE_W,
    th = LEVEL.TILE_H,
    gw = oLevel.ww-1,
    gh = oLevel.hh-1;
    //steep = abs(y2 - y1) > abs(x2 - x1),
    //aa = argument[5];
if (argument_count > 5)
    prec = argument[5];
var dx = x2 - x1,
    dy = y2 - y1;

var incx = sign(dx),
    incy = sign(dy);

dx = abs(dx);
dy = abs(dy);

var pdx, pdy, es, el;

if (dx > dy)
{
    pdx = incx;
    pdy = 0;
    es = dy;
    el = dx;
}
else
{
    pdx = 0;
    pdy = incy;
    es = dx;
    el = dy;
}

var xs = x1,
    ys = y1,
    err = el / 2;

var xt, yt;

xt = xs div tw;
yt = ys div th; 
var gridval = lvl[# xt, yt];
if (gridval & col)
{
    if (prec)
    {
        if (pointColGrid(xs, ys, xt, yt))
        {
            // collide
            var _arr;
            _arr[0] = xt;
            _arr[1] = yt;
            _arr[2] = xs;
            _arr[3] = ys;
            return _arr;
        }
    }
    else
    {
        // collide
        var _arr;
        _arr[0] = xt;
        _arr[1] = yt;
        _arr[2] = xs;
        _arr[3] = ys;
        return _arr;        
    }
}     

for (var t = 0; t < el; t++)
{
    err -= es;
    if (err < 0)
    {
        err += el;
        xs += incx;
        ys += incy;
    }
    else
    {
        xs += pdx;
        ys += pdy;
    }
    xt = xs div tw;
    yt = ys div th; 
    gridval = lvl[# xt, yt];
    if (gridval & col)
    {
        if (prec)
        {
            if (pointColGrid(xs, ys, xt, yt))
            {
                // collide
                var _arr;
                _arr[0] = xt;
                _arr[1] = yt;
                _arr[2] = xs;
                _arr[3] = ys;
                return _arr;
            }
        }
        else
        {
            // collide
            var _arr;
            _arr[0] = xt;
            _arr[1] = yt;
            _arr[2] = xs;
            _arr[3] = ys;
            return _arr;        
        }
    }  
}
return -1;

