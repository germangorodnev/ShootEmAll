// given eX, eY generates list of intermediate points 
var tangentX = eX - x,
    tangentY = eY - y,
    normX, normY,
    len = point_distance(x, y, eX, eY);

var normX = tangentY / len,
    normY = (-tangentX) / len;
    
var positions = ds_list_create();
ds_list_add(positions, 0);
for (var i = 0; i < len / 4; i++)
    ds_list_add(positions, random_range(0, 1));

ds_list_sort(positions, 1);
var sway = 80,
    jaggedness = 1 / sway;
   
var prevX = x,
    prevY = y,
    prevDisp = 0;
for (var i = 1, ci = ds_list_size(positions); i < ci; i++)
{
    var pos = positions[| i];
    var scale = (len * jaggedness) * (pos - positions[| i - 1]);
    var env = 1;
    if (pos > 0.95)
        env = 20 * (1 - pos);
        
    var disp = random_range(-sway, sway);
    disp -= (disp - prevDisp) * (1 - scale);
    disp *= env;
    
    var pt;
    pt[0] = x + pos * tangentX + disp * normX;
    pt[1] = y + pos * tangentY + disp * normY;
    ds_list_add(points, pt);
    
    prevX = pt[0];
    prevY = pt[1];
    pt = 0;
    prevDisp = disp; 
}
    
ds_list_destroy(positions);

