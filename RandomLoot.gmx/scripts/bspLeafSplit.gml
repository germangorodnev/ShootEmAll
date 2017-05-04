///bspLeafSplit(leaf id)
var ll = argument[0];
with (ll)
{
    if (leftChild != noone || rightChild != noone)
        return false; // already splitted
    
    var splitH = 0;
    if (w > h && w / h >= 1.25)
        splitH = 0;
    else if (h > w && h / w >= 1.25)
        splitH = 1;
        
    var maximum = (h * splitH + w * !splitH - minSize);
    if (maximum <= minSize)
        return false; // this area is too small to split
        
    var split = irandom_range(minSize, maximum);
    // create our left and right children based on the direction of the split
    if (splitH)
    {
        leftChild = bspLeafCreate(x, y, w, split); 
        rightChild = bspLeafCreate(x, y + split, w, h - split);
    }
    else
    {
        leftChild = bspLeafCreate(x, y, split, h); 
        rightChild = bspLeafCreate(x + split, y, w - split, h);
    }
    return true; // split successful
}
