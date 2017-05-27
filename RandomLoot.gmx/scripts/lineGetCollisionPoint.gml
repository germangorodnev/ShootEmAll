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

// var dx = x2 - x1,
//     dy = y2 - y1;

// var xs = x1,
//     ys = y1,
//     p = 2 * dy - dx;

// var xt, yt;     

// while (xs < x2)
// {
//     if (p >= 0)
//     {
//         xt = xs div tw; //clamp(xs div tw, 0, gw);
//         yt = ys div th; //clamp(ys div th, 0, gh);
//         if (lvl[# xt, yt] & col)
//         {
//             // collide
//             var _arr;
//             _arr[0] = xt;
//             _arr[1] = yt;
//             return _arr;
//         }            
//         ys += sign(dy);
//         p = p + 2 * dy - 2 * dx;
//     }
//     else
//     {
//         xt = xs div tw; //clamp(xs div tw, 0, gw);
//         yt = ys div th; //clamp(ys div th, 0, gh);
//         if (lvl[# xt, yt] & col)
//         {
//             // collide
//             var _arr;
//             _arr[0] = xt;
//             _arr[1] = yt;
//             return _arr;
//         }            
//         p = p + 2 * dy;
//     }
//     xs += sign(dx);
// }

// var steep = (y2 - y1) > (x2 - x1);
// if (steep)
// {
//     var swap = x1;
//     x1 = y1;
//     y1 = swap;

//     swap = x2;
//     x2 = y2;
//     y2 = swap;
// }

// if (x1 > x2)
// {
//     var swap = x1;
//     x1 = x2;
//     x2 = swap;

//     swap = y1;
//     y1 = y2;
//     y2 = swap;    
// }
// var dx = x2 - x1,
//     dy = abs(y2 - y1);
// var error = dx / 2,
//     ystep = -1;
// if (y1 < y2)
//     ystep = 1;
// var xs,
//     ys = y1,
//     maxx = x2;

// for (xs = x1; xs < maxx; xs++)
// {
//     if (steep)
//     {
//         xt = ys div tw; //clamp(xs div tw, 0, gw);
//         yt = xs div th; //clamp(ys div th, 0, gh);
//         if (lvl[# xt, yt] & col)
//         {
//             // collide
//             var _arr;
//             _arr[0] = xt;
//             _arr[1] = yt;
//             return _arr;
//         }     
//     }
//     else
//     {
//         xt = xs div tw; //clamp(xs div tw, 0, gw);
//         yt = ys div th; //clamp(ys div th, 0, gh);
//         if (lvl[# xt, yt] & col)
//         {
//             // collide
//             var _arr;
//             _arr[0] = xt;
//             _arr[1] = yt;
//             return _arr;
//         }           
//     }

//     error -= dy;
//     if (error < 0)
//     {
//         y += ystep;
//         error += dx;
//     }
// }

// return 0;
//var _arr;
//_arr[0] = x;
//_arr[1] = y;

// var dx = abs(x2 - x1),
//     dy = abs(y2 - y1),
//     sx = -1,
//     sy = -1;
// if (x1 < x2)
//     sx = 1;
// if (y1 < y2)
//     sy = 1;
// var error = dx - dy;

// var xt, yt;   
// xt = clamp(x2 div tw, 0, gw);
// yt = clamp(y2 div th, 0, gh);
// if (lvl[# xt, yt] & col)
// {
//     // collide
//     var _arr;
//     _arr[0] = xt;
//     _arr[1] = yt;
//     return _arr;
// }

// while (x1 != x2 || y1 != y2)
// {
//     xt = clamp(x1 div tw, 0, gw);
//     yt = clamp(y1 div th, 0, gh);
//     if (lvl[# xt, yt] & col)
//     {
//         // collide
//         var _arr;
//         _arr[0] = xt;
//         _arr[1] = yt;
//         return _arr;
//     }  
//     var error2 = error * 2;
//     if (error2 > -dy)
//     {
//         error -= dy;
//         x1 += sx;
//     }     
//     if (error2 < dx)
//     {
//         error += dx;
//         y1 += sy;
//     }
// }
 
/*var delta_x = x2 - x1,
    ix = sign(delta_x);
delta_x = abs(delta_x) << 1;

var delta_y = y2 - y1,
    iy = sign(delta_y);
delta_y = abs(delta_y) << 1;

var xt = median(0, x1 div tw, oLevel.ww - 1),  
    yt = median(0, y1 div th, oLevel.hh - 1);
if (lvl[# xt, yt] & col)
{
    // collide
    var _arr;
    _arr[0] = xt;
    _arr[1] = yt;
    return _arr;
}

if (delta_x >= delta_y)
{
    var error = delta_y - (delta_x >> 1);
    for (x1 = x1; x1 < x2; x1 += 0)
    {
        if ((error >= 0) && (error || (ix > 0)))
        {
            error -= delta_x;
            y1 += iy;
        }
        
        error += delta_y;
        x1 += ix;
        
        xt = x1;
        yt = y1;
        if (lvl[# xt, yt] & col)
        {
            // collide
            var _arr;
            _arr[0] = xt;
            _arr[1] = yt;
            return _arr;
        }
    }
}
else
{
    var error = delta_x - (delta_y >> 1);
    for (y1 = y1; y1 < y2; y1 += 0)
    {
        if ((error >= 0) && (error || (iy > 0)))
        {
            error -= delta_y;
            x1 += ix;
        }
        
        error += delta_x;
        y1 += iy;
        
        xt = x1;
        yt = y1;
        if (lvl[# xt, yt] & col)
        {
            // collide
            var _arr;
            _arr[0] = xt;
            _arr[1] = yt;
            return _arr;
        }
    }
}

 
/*var dx = x2 - x1,
    dy = y2 - y1,
    d = 2 * dy - dx,
    yy = y1;
for (var xx = x1; xx < x2; xx++)
{
    var xt = xx div tw,
        yt = yy div th;
    if (lvl[# xt, yt] & col)
    {
        _arr;
        
        return _arr;
    }
    if (d > 0)
    {
        yy++;
        d -= 2 * dx;
    }
    d += 2 * dy;
}

/*    
if (steep)
{
    var ch = x1;
    x1 = y1;
    y1 = ch;
    
    ch = x2;
    x2 = y2;
    y2 = ch;
}

if (x1 > x2)
{
    var ch = x1;
    x1 = x2;
    x2 = ch;
    
    ch = y1;
    y1 = y2;
    y2 = ch;
}

var dx = x2 - x1,
    dy = abs(y2 - y1);
var error = dx / 2,
    ystep = 1;
    
if (y1 >= y2)
    ystep = -1;  
    
var yy = y1,
    maxX = x2;
    
for (var xx = x1; xx < maxX; xx++)
{
    if (steep)
    {
        var xt = median(0, yy div tw, oLevel.ww - 1),  
            yt = median(0, xx div th, oLevel.hh - 1);
        if (lvl[# xt, yt] & col)
        {
            // collide
            var _arr;
            _arr[0] = xt;
            _arr[1] = yt;
            return _arr;
        }
    }
    else
    {
        var xt = median(0, xx div tw, oLevel.ww - 1), 
            yt = median(0, yy div th, oLevel.hh - 1);
        if (lvl[# xt, yt] & col)
        {
            // collide
            var _arr;
            _arr[0] = xt;        
            _arr[1] = yt;
            return _arr;
        }
    }
    
    error -= dy;
    if (error < 0)
    {
        yy += ystep;
        error += dx;
    }
}   

