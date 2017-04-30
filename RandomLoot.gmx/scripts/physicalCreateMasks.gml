var x1, y1, x2, y2;
var ind = 0,
    gr = 1;

//SWITCH ADD
switch (object_index)
{   
case oPlayer:
    ind = 0;
    gr = 0;
    break;    
}

// create hitmask
masksCount++;
var main = global.bboxdata[| ind];
var hitmask = main[? "hit"];
var mask = hitmask[? "points"];
x1 = mask[| 0];
y1 = mask[| 1]; 
x2 = mask[| 2];
y2 = mask[| 3];
masks[0] = instance_create(x1, y1, oMaskHit);
masks[0].par = id;
maskHit = masks[0];
maskHit.group = gr;
masksXoff[0] = x1;
masksYoff[0] = y1;
var xl = abs(x2 - x1),
    yl = abs(y2 - y1);
masks[0].image_xscale = xl / 32;
masksXsc[0] = masks[0].image_xscale;
masks[0].image_yscale = yl / 32;    

      

