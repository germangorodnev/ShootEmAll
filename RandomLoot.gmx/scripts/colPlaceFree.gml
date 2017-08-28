///colPlaceFree(x_to, y_to, bitmask)
var xto = argument[0],
    yto = argument[1],
    xo = x,
    yo = y;
    
x = xto;
y = yto;

var rd = bbox_right div LEVEL.TILE_W,
    ld = bbox_left div LEVEL.TILE_W,
    td = bbox_top div LEVEL.TILE_H,
    bd = bbox_bottom div LEVEL.TILE_H,
    rt, lt, rb, lb, xmeet, ymeet,
    rreal = (rd-0) * LEVEL.TILE_W,
    lreal = (ld+1) * LEVEL.TILE_W, 
    bottomreal = (bd-0) * LEVEL.TILE_H, 
    topreal = (td+1) * LEVEL.TILE_H,
    lvl = oLevel.level,
    collvl = oLevel.colLevel; 
    
var canCache = 0;
if (useCache)
    canCache = rectangle_in_rectangle(ld, td, rd, bd,
        cacheX, cacheY, cacheX + cacheRW, cacheY + cacheRH) == 1;
if (canCache)
{
    xmeet = (lvlGridCache[rd - cacheX, td - cacheY] & argument[2])
        || (lvlGridCache[ld - cacheX, td - cacheY] & argument[2]);
        
    ymeet = (lvlGridCache[rd - cacheX, bd - cacheY] & argument[2])
        || (lvlGridCache[ld - cacheX, bd - cacheY] & argument[2]);
}
else
{
    xmeet = (lvl[# rd, td] & argument[2])
        || (lvl[# ld, td] & argument[2]);
        
    ymeet = (lvl[# rd, bd] & argument[2])
        || (lvl[# ld, bd] & argument[2]);
}
        
var c_bbox_left = bbox_left,
    c_bbox_top = bbox_top,
    c_bbox_right = bbox_right,
    c_bbox_bottom = bbox_bottom;

x = xo;
y = yo;

if (!xmeet && !ymeet)
    return 1;
    
if (canCache)
{
    rt = collvlGridCache[rd - cacheX, td - cacheY];
    lt = collvlGridCache[ld - cacheX, td - cacheY];
    rb = collvlGridCache[rd - cacheX, bd - cacheY];
    lb = collvlGridCache[ld - cacheX, bd - cacheY];   
}
else
{
    rt = collvl[# rd, td];
    lt = collvl[# ld, td];
    rb = collvl[# rd, bd];
    lb = collvl[# ld, bd];   
}

if (xto > x)
{
    if (rt != undefined) 
    {
        for (var i = 0, lsize = ds_list_size(rt); i < lsize; i++)         
        {   
            var _arr = rt[| i];
            if (rectangle_in_rectangle(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
                rd*LEVEL.TILE_W+_arr[2], td*LEVEL.TILE_H+_arr[1], (rd+1)*LEVEL.TILE_W-_arr[0], (td+1)*LEVEL.TILE_W-_arr[3]) > 0) 
                    return 0;  
        }
    }
    if (rb != undefined) 
    {
        for (var i = 0, lsize = ds_list_size(rb); i < lsize; i++)         
        {   
            var _arr = rb[| i];
            if (rectWithRect(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        rd*LEVEL.TILE_W+_arr[2], bd*LEVEL.TILE_H+_arr[1], (rd+1)*LEVEL.TILE_W-_arr[0], (bd+1)*LEVEL.TILE_W-_arr[3])) 
                return 0;
        }  
    }       
}
else if (xto < x)
{
    if (lb != undefined) 
    {
        for (var i = 0, lsize = ds_list_size(lb); i < lsize; i++)         
        {   
            var _arr = lb[| i];
            if (rectangle_in_rectangle(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        (ld)*LEVEL.TILE_W+_arr[2], bd*LEVEL.TILE_H+_arr[1], (ld+1)*LEVEL.TILE_W-_arr[0], (bd+1)*LEVEL.TILE_W-_arr[3]) > 0) 
                return 0;
        }  
    }   
    if (lt != undefined) 
    {
        for (var i = 0, lsize = ds_list_size(lt); i < lsize; i++)         
        {   
            var _arr = lt[| i];
            if (rectangle_in_rectangle(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        (ld)*LEVEL.TILE_W+_arr[2], td*LEVEL.TILE_H+_arr[1], (ld+1)*LEVEL.TILE_W-_arr[0], (td+1)*LEVEL.TILE_W-_arr[3]) > 0) 
                return 0;  
        }
    }    
}
else if (yto < y)
{
    if (rt != undefined) 
    {
        for (var i = 0, lsize = ds_list_size(rt); i < lsize; i++)         
        {   
            var _arr = rt[| i];
            if (rectangle_in_rectangle(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        rd*LEVEL.TILE_W+_arr[2], td*LEVEL.TILE_H+_arr[1], (rd+1)*LEVEL.TILE_W-_arr[0], (td+1)*LEVEL.TILE_W-_arr[3]) > 0) 
                return 0; 
        } 
    }
    if (lt != undefined) 
    {
        for (var i = 0, lsize = ds_list_size(lt); i < lsize; i++)         
        {   
            var _arr = lt[| i];
            if (rectangle_in_rectangle(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        (ld)*LEVEL.TILE_W+_arr[2], td*LEVEL.TILE_H+_arr[1], (ld+1)*LEVEL.TILE_W-_arr[0], (td+1)*LEVEL.TILE_W-_arr[3]) > 0) 
                return 0; 
        } 
    }           
}
else
{
    if (rb != undefined) 
    {
        for (var i = 0, lsize = ds_list_size(rb); i < lsize; i++)         
        {   
            var _arr = rb[| i];
            if (rectangle_in_rectangle(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        rd*LEVEL.TILE_W+_arr[2], bd*LEVEL.TILE_H+_arr[1], (rd+1)*LEVEL.TILE_W-_arr[0], (bd+1)*LEVEL.TILE_W-_arr[3]) > 0) 
                return 0; 
        } 
    }   
    if (lb != undefined) 
    {
        for (var i = 0, lsize = ds_list_size(lb); i < lsize; i++)         
        {   
            var _arr = lb[| i];
            if (rectangle_in_rectangle(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        (ld)*LEVEL.TILE_W+_arr[2], bd*LEVEL.TILE_H+_arr[1], (ld+1)*LEVEL.TILE_W-_arr[0], (bd+1)*LEVEL.TILE_W-_arr[3]) > 0) 
                return 0;
        }  
   }        
}   

return 1;

