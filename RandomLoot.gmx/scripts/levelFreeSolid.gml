///levelFreeSolid(x1, y1, x2, y2, newval)
var ww = (argument[2] - argument[0]) div LEVEL.TILE_W; //sign(argument[2] - argument[0]) * ceil(abs(argument[2] - argument[0])),
    hh = (argument[3] - argument[1]) div LEVEL.TILE_H; //sign(argument[3] - argument[1]) * ceil(abs(argument[3] - argument[1])),
    newval = argument[4];
ww = ww div LEVEL.TILE_W;
hh = hh div LEVEL.TILE_H;
var xx = argument[0] div LEVEL.TILE_W,
    yy = argument[1] div LEVEL.TILE_H;
for (var i = xx, ci = xx + ww; i <= ci; i++)
    for (var j = 0, cj = yy + hh; j <= cj; j++)
    {
        oLevel.level[# i, j] = newval;
    }
