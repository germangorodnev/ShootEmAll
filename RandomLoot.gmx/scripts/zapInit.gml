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
/*var results = new List<Line>();
    Vector2 tangent = dest - source;
    Vector2 normal = Vector2.Normalize(new Vector2(tangent.Y, -tangent.X));
    float length = tangent.Length();
 
    List<float> positions = new List<float>();
    positions.Add(0);
 
    for (int i = 0; i < length / 4; i++)
        positions.Add(Rand(0, 1));
 
    for (int i = 1; i < positions.Count; i++)
    {
        float pos = positions[i];
 
        // used to prevent sharp angles by ensuring very close positions also have small perpendicular variation.
        float scale = (length * Jaggedness) * (pos - positions[i - 1]);
 
        Vector2 point = source + pos * tangent + displacement * normal;
        results.Add(new Line(prevPoint, point, thickness));
        prevPoint = point;
        prevDisplacement = displacement;
    }
 
    results.Add(new Line(prevPoint, dest, thickness));
 
    return results;
