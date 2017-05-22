///collisionLine(x1, y1, x2, y2, collide with)

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
var col = (!colPositionFree(sx, sy, mask) || !colPositionFree(tx, ty, mask)); 
if (col)
    return col;
 
// Check INTEGER X coordinates that intersect with grid, determine according y values mathmatically    
var deltax = abs((tx div tw) - (sx div tw));
if (deltax > 0) 
{
    var xslope = (ty - sy) / (tx - sx);                                                                                                  
    var cx = sx &~ (tw-1) + (tw-1) * (tx > sx);                                                                                                    
    var cy = sy + xslope * (cx - sx)                                                                                                        
    col = !colPositionFree(cx, cy, mask) 
        || !colPositionFree((tx &~ (tw-1)) + (tw-1) * (tx < sx), ty + xslope * (((tx &~ (tw-1)) + (tw-1) * (tx < sx)) - tx), mask); 
    if (col) 
        return col;                                    
    var dirx = (tx > sx) - (tx < sx);                                                                                                      
    repeat (deltax - 1)
    {                                                                                                              
        col = !colPositionFree(cx + dirx, cy + xslope * dirx, mask) 
            || !colPositionFree(cx + tw * dirx, cy + xslope * tw * dirx, mask); 
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
    col = !colPositionFree(cx, cy, mask)
        || !colPositionFree(tx + yslope * (((ty &~ (th-1)) + (th-1) * (ty < sy))- ty), (ty &~ (th-1)) + (th-1) * (ty < sy), mask); 
    if (col) 
        return col;                                
    var diry = (ty > sy) - (ty < sy);
    repeat (deltay - 1)
    {
        col = !colPositionFree(cx + yslope * diry, cy + diry, mask) 
            || !colPositionFree(cx + yslope * th * diry, cy + th * diry, mask); 
        if (col) 
            return col;
        cy += th * diry;
        cx += yslope * th * diry;
    }
}
 
return col;
