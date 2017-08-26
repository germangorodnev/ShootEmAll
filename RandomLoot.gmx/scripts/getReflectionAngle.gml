///getReflectionAngle(0-right\1-top\2-left\3-bottom, angle)
// returns reflection angle
var na = -1;
switch (argument[0])
{
case 0: na = 180; break;
case 1: na = 270; break; 
case 2: na = 0; break; 
case 3: na = 90; break; 
}
return (2 * na - 180 - argument[1]);

