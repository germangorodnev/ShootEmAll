// add player position
with (oMinimap)
{
    var lvl = oLevel.level;
    surface_set_target(mapmovable);
    draw_clear_alpha(c_white, 0); // cleared
    // player positions
    for (var i = 0, ci = instance_number(oPlayer); i < ci; i++)
    {
        var col = playercol[i],
            obj = instance_find(oPlayer, i);
        var xr = (obj.x-LEVEL.TILE_W) div LEVEL.TILE_W, 
            yr = (obj.y-LEVEL.TILE_H) div LEVEL.TILE_H;
        /*if (lvl[# xr, yr] & LEVEL.WALL)
        {
            xr = plxr[i];
            yr = plyr[i];
        }
        plxr[i] = xr;
        plyr[i] = yr;*/
        // draw point
        draw_circle_colour(xr+pixelsize/2, yr+pixelsize/2, pixelsize/2, 
            col, col, 0);    
    }
    
    // crates
    for (var i = 0, ci = instance_number(oCrate); i < ci; i++)
    {
        var obj = instance_find(oCrate, i),
            col = crateclosedcol;
        if (!obj.cap)
            col = crateopenedcol;
        draw_rectangle_colour(obj.gx, obj.gy, obj.gx+1, obj.gy,
            col, col, col, col, 0);    
    }
    
    // shops
    for (var i = 0, ci = instance_number(oShop); i < ci; i++)
    {
        var obj = instance_find(oShop, i),
            xr = obj.x div LEVEL.TILE_W, 
            yr = obj.y div LEVEL.TILE_H,
            col = shopcol;
        if (obj.goodsCnt == 0)
            col = shopnoitemcol;
        draw_rectangle_colour(xr, yr, xr+.5, yr+.5,
            col, col, col, col, 0);    
    }    
    
    // lasers
    for (var i = 0, ci = instance_number(oLevelDoor); i < ci; i++)
    {
        var obj = instance_find(oLevelDoor, i),
            xr = obj.xr, 
            yr = obj.yr;
        if (!obj.block)
            continue;
        draw_rectangle_colour(xr, yr, xr+.5, yr+.5,
            wallcol, wallcol, wallcol, wallcol, 0);    
    }    
    
    surface_reset_target();
}
