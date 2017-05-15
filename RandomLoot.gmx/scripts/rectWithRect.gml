///rectWithRect(r1x1, r1y1, r1x2, r1y2, r2x1, r2y1, r2x2, r2y2)
//                0    1      2      3    4     5    6     7
return !(argument[4] > argument[2] || 
         argument[6] < argument[0] || 
         argument[5] > argument[3] ||
         argument[7] < argument[1]);

