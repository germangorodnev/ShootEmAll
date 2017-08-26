surface_set_target(map);

var lvl = oLevel.level, 
    ww = oLevel.ww,
    hh = oLevel.hh;
var floorcol = make_colour_rgb(82, 110, 92),
    solidcol = make_colour_rgb(33, 28, 91),
    voidcol = wallcol;
for (var i = 0; i < ww; i++)
{
    for (var j = 0; j < hh; j++)
    {
        var xr = i * pixelsize,
            yr = j * pixelsize;
        draw_rectangle_colour(xr, yr, xr + pixelsize, yr + pixelsize, 
            voidcol, voidcol, voidcol, voidcol, 0);
        var val = (lvl[# i, j]);
        if (val & LEVEL.FLOOR)
            draw_rectangle_colour(xr, yr, xr + pixelsize, yr + pixelsize, 
                floorcol, floorcol, floorcol, floorcol, 0);
        if (val & LEVEL.WALL)
            draw_rectangle_colour(xr, yr, xr + pixelsize, yr + pixelsize, 
                wallcol, wallcol, wallcol, wallcol, 0);
        if (val & LEVEL.SOLID)
            if (!(val & LEVEL.WALL))
                draw_rectangle_colour(xr, yr, xr + pixelsize, yr + pixelsize, 
                    solidcol, solidcol, solidcol, solidcol, 0);    
            else
                draw_rectangle_colour(xr, yr, xr + pixelsize, yr + pixelsize, 
                    wallcol, wallcol, wallcol, wallcol, 0);  
    }
}
surface_reset_target();

