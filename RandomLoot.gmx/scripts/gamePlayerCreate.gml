///gamePlayerCreate(x, y, CHARS.__ character)
var new = instance_create(argument[0], argument[1], oPlayer),
    n = instance_number(oPlayer) - 1;
view_enabled = 1;
oMinimap.plxr[n] = (new.x-LEVEL.TILE_W) div LEVEL.TILE_W;
oMinimap.plyr[n] = (new.y-LEVEL.TILE_H) div LEVEL.TILE_H;

with (new)
{
    TYPE = argument[2];
    switch (argument[2])
    {
    case CHARS.__CARD:
        sprite_index = sPlayerKamikaze;
        playerAbilityAdd(ABILITIES.__DASH);
        break;
    case CHARS.__MILITARY:
        sprite_index = sPlayerCamouflage;
        playerAbilityAdd(ABILITIES.__DASH);
        break;
    case CHARS.__CACTUS:
        sprite_index = sPlayerCactus;
        playerAbilityAdd(ABILITIES.__SPIKES);
        break;
    case CHARS.__SOLITARE:
        sprite_index = sPlayerSolitare;
        playerAbilityAdd(ABILITIES.__DASH);
        break;
    case CHARS.__FOX:
        sprite_index = sPlayerFox;
        playerAbilityAdd(ABILITIES.__DASH);
        break;
    }
    shrx = sprite_width / 2;
    shry = 14;
    playerMaskCreate(0);
}
