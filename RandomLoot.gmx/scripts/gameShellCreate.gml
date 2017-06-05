///gameShellCreate(x, y, AMMO.__ type)
var l, t, w, h, ysc = 2, xsc = 2, aa = 0.9;
switch(argument[2])
{
case AMMO.__SHOTGUN:
    switch (irandom(5))
    {
    case 0: l = 7; t = 1; w = 5; h = 2; break;
    case 1: l = 7; t = 4; w = 5; h = 4; break;
    case 2: l = 7; t = 9; w = 5; h = 4; break;
    case 3: l = 9; t = 14; w = 2; h = 5; break;
    case 4: l = 7; t = 20; w = 5; h = 4; break;
    case 5: l = 7; t = 25; w = 5; h = 4; break;
    }
    break;
// no need to
case AMMO.__BORIAN:
case AMMO.__ENERGY:
case AMMO.__ROCKET:
case AMMO.__GRENADES:
    exit;
    break;
default:
    switch (irandom(5))
    {
    case 0: l = 1; t = 1; w = 4; h = 2; break;
    case 1: l = 1; t = 4; w = 5; h = 4; break;
    case 2: l = 1; t = 9; w = 4; h = 4; break;
    case 3: l = 2; t = 14; w = 2; h = 4; break;
    case 4: l = 1; t = 19; w = 4; h = 4; break;
    case 5: l = 1; t = 25; w = 4; h = 2; break;
    }
    break;
}
xsc *= choose(1, -1);
ysc *= choose(1, -1);
var tile = tile_add(tlsBuesAndShells, l, t, w, h, argument[0], argument[1], oLevel.postEffectD);
tile_set_scale(tile, xsc, ysc);
tile_set_alpha(tile, aa);

