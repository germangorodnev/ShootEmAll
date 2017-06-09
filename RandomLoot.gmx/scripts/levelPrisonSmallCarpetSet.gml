///levelPrisonSmallCarpetSet(x in tiles, y in tiles)
var xt = argument[0],
    yt = argument[1],
    cpt = argument[2],
    spr = -1;
switch(cpt)
{
case 0: spr = tlsPrisonDefaultCarpet; break;
case 1: spr = tlsPrisonCarpet; break;
}
tile_add(spr, 0, 0, tw*3, th*3, xt*tw, yt*th, oLevel.carpetD);

