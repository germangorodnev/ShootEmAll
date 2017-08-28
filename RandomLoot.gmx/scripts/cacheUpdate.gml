// update cache
var xo = cacheX, yo = cacheY;
cacheX = clamp(x div LEVEL.TILE_W - 1, 0, oLevel.ww - 1);
cacheY = clamp(y div LEVEL.TILE_H - 1, 0, oLevel.ww - 1);
if (xo != cacheX || yo != cacheY)
{
    for (var i = 0; i < cacheW; ++i)
    {
        for (var j = 0; j < cacheH; ++j)
        {
            lvlGridCache[i, j] = oLevel.level[# cacheX + i, cacheY + j];
            collvlGridCache[i, j] = oLevel.colLevel[# cacheX + i, cacheY + j];
        }
    }
}
