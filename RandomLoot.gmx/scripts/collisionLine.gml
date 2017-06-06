///collisionLine(x1, y1, x2, y2, collide with, [prec])
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
            return 1;
        }
    }
    else
    {
        return 1;
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
                return 1;
            }
        }
        else
        {
            return 1;       
        }
    }  
}
return 0;
/*
//=== INPUT ===
var sx = argument[0],   
    sy = argument[1],   
    tx = argument[2],   
    ty = argument[3],
    mask = argument[4],
    tw = LEVEL.TILE_W,
    th = LEVEL.TILE_H;
    
//=== RETURN ===
// true if line is not free
// false otherwise
 
// Check Start + End Point
var col = (!colPositionFreePrecise(sx, sy, mask) || !colPositionFreePrecise(tx, ty, mask)); 
if (col)
    return col;
 
// Check INTEGER X coordinates that intersect with grid, determine according y values mathmatically    
var deltax = abs((tx div tw) - (sx div tw));
if (deltax > 0) 
{
    var xslope = (ty - sy) / (tx - sx);                                                                                                  
    var cx = sx &~ (tw-1) + (tw-1) * (tx > sx);                                                                                                    
    var cy = sy + xslope * (cx - sx)                                                                                                        
    col = !colPositionFreePrecise(cx, cy, mask) 
        || !colPositionFreePrecise((tx &~ (tw-1)) + (tw-1) * (tx < sx), ty + xslope * (((tx &~ (tw-1)) + (tw-1) * (tx < sx)) - tx), mask); 
    if (col) 
        return col;                                    
    var dirx = (tx > sx) - (tx < sx);                                                                                                      
    repeat (deltax - 1)
    {                                                                                                              
        col = !colPositionFreePrecise(cx + dirx, cy + xslope * dirx, mask) 
            || !colPositionFreePrecise(cx + tw * dirx, cy + xslope * tw * dirx, mask); 
        if (col)
            return col;            
        cx += tw * dirx;                                                                                                                
        cy += xslope * tw * dirx;                                                                                                      
    }
}
   
// Check INTEGER Y coordinates that intersect with grid, determine according x values mathematically                              
var deltay = abs((ty div th) - (sy div th));
if (deltay > 0) 
{
    var yslope = (tx - sx) / (ty - sy);                                                                                                
    var cy = sy &~ (th-1) + th * (ty > sy);                
    var cx= sx + yslope * (cy - sy)                    
    col = !colPositionFreePrecise(cx, cy, mask)
        || !colPositionFreePrecise(tx + yslope * (((ty &~ (th-1)) + (th-1) * (ty < sy))- ty), (ty &~ (th-1)) + (th-1) * (ty < sy), mask); 
    if (col) 
        return col;                                
    var diry = (ty > sy) - (ty < sy);
    repeat (deltay - 1)
    {
        col = !colPositionFreePrecise(cx + yslope * diry, cy + diry, mask) 
            || !colPositionFreePrecise(cx + yslope * th * diry, cy + th * diry, mask); 
        if (col) 
            return col;
        cy += th * diry;
        cx += yslope * th * diry;
    }
}
 
return col;
