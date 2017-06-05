///gameBueAdd(x, y, 0-blood,1-jelly)
var l, t, w, h, sc = 1, aa = 0.9;
switch(argument[2])
{
case 0:
    switch (irandom(1))
    {
    case 0: l = 15; t = 1; w = 22; h = 15; break;
    case 1: l = 40; t = 1; w = 25; h = 20; break;
    }
    break;
case 1:
    sc = 2;
    switch (irandom(1))
    {
    case 0: l = 70; t = 3; w = 22; h = 18; break;
    case 1: l = 98; t = 4; w = 25; h = 20; break;
    }
    break;
}
var tile = tile_add(tlsBuesAndShells, l, t, w, h, argument[0], argument[1], oLevel.postEffectD);
tile_set_scale(tile, sc, sc);
tile_set_alpha(tile, aa);

