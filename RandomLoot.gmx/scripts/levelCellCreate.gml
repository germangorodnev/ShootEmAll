///levelCellCreate(x, y, w, h, [size])
var n = instance_create(argument[0], argument[1], oCell);
n.rw = argument[2];
n.rh = argument[3];
n.image_xscale = argument[2] / 32;
n.image_yscale = argument[3] / 32;
if (argument_count > 4)
    n.size = argument[4];
return n;
