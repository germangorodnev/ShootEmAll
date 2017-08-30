///instanceNearestNotMe(x, y, obj)
var offset = 10000;
x += offset;
var nr = instance_nearest(argument[0], argument[1], argument[2]);
x -= offset;
return nr;
