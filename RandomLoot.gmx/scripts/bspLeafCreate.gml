///bspLeafCreate(x, y, w, h)
var ll = instance_create(argument[0], argument[1], oLeaf);
ll.depth = -oLevel.cnt;
oLevel.cnt++;
ll.w = argument[2];
ll.h = argument[3];
return ll;
