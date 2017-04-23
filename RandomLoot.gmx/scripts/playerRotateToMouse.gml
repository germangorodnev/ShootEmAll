mousedir = point_direction(x, y, mouse_x, mouse_y);
if (mouse_x < x)
    image_xscale = -1;
else
    image_xscale = 1;
if (mouse_y < y)
    image_index = 1;
else
    image_index = 0;

