///gamePlayerCreate(x, y, CHARS.__ character)
var new = instance_create(argument[0], argument[1], oPlayer),
    n = instance_number(oPlayer) - 1;
view_enabled = 1;
oMinimap.plxr[n] = (new.x-LEVEL.TILE_W) div LEVEL.TILE_W;
oMinimap.plyr[n] = (new.y-LEVEL.TILE_H) div LEVEL.TILE_H;

switch (argument[2])
{
case CHARS.__CARD:
    new.sprite_index = sPlayerKamikaze;
    break;
case CHARS.__MILITARY:
    new.sprite_index = sPlayerCamouflage;
    break;
}
