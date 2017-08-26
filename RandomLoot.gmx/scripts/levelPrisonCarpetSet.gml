///levelPrisonCarpetSet(x in tiles, y in tiles, w, h, 0-blue\1-orange\2-respawn)
var xt = argument[0],
    yt = argument[1],
    cw = argument[2],
    ch = argument[3],
    cpt = argument[4],
    spr = -1;
switch(cpt)
{
case 0: spr = tlsPrisonDefaultCarpet; break;
case 1: spr = tlsPrisonCarpet; break;
case 2: spr = tlsPrisonCarpetRespawn; break;
}

// left top
tile_add(spr, 0, 0, tw, th, (xt)*tw, (yt)*th, oLevel.carpetD);
// top
for (var i = xt + 1, ci = xt + cw - 1; i < ci; i++)
    tile_add(spr, tw, 0, tw, th, i*tw, (yt)*th, oLevel.carpetD);
// right top
tile_add(spr, tw*2, 0, tw, th, (xt+cw-1)*tw, (yt)*th, oLevel.carpetD);

// left
for (var i = yt + 1, ci = yt + rh - 2; i < ci; i++)
    tile_add(spr, 0, th, tw, th, xt*tw, (i)*th, oLevel.carpetD);
// left bottom
tile_add(spr, 0, th*2, tw, th, xt*tw, (yt + rh - 2)*th, oLevel.carpetD);

// bottom
for (var i = xt + 1, ci = xt + cw - 1, cy = (yt + rh - 2) * th; i < ci; i++)
    tile_add(spr, tw, th*2, tw, th, i*tw, cy, oLevel.carpetD);
// right bottom
tile_add(spr, tw*2, th*2, tw, th, (xt + cw  - 1)* tw, (yt + rh - 2)*th, oLevel.carpetD);

// right
for (var i = yt + 1, ci = yt + rh - 2, cx = (xt + cw - 1) * th; i < ci; i++)
    tile_add(spr, tw*2, th, tw, th, cx, i*th, oLevel.carpetD);
    
// inner
for (var i = xt + 1, ci = xt + cw - 1; i < ci; i++)
    for (var m = yt + 1, cm = yt + rh - 2; m < cm; m++)
    {
        var xpos = tw * 3;
        if ((i + m) mod 2 == 0)
            xpos = tw;
        tile_add(spr, xpos, th, tw, th, i*tw, m*th, oLevel.carpetD);
    }


