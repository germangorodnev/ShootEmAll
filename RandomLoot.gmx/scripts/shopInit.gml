// random for now
/*
goodsClass[] - PICKUP.__ class
goodsId[] - id in one of enums
goodsName[] - string
goodsDesc[] - string
goodsSpr[] - sprite_index
goodsImg[] - image_index
goodsPrice[] - price in c.u.
*/

for (var i = 0; i < goodsCnt; i++)
{
    goodsClass[i] = choose(PICKUP.__SU_CARDS, PICKUP.__RECH_EXPLOSIVES, PICKUP.__WEAPON);
    switch (goodsClass[i])
    {
    case PICKUP.__SU_CARDS:
        goodsId[i] = irandom_range(SINGLEUSE.__NONE + 1, SINGLEUSE.__CARDS_END - 1);
        var _arr = gameGetSingleuseInformation(goodsId[i]);
        goodsName[i] = _arr[0];
        goodsDesc[i] = _arr[1];
        goodsSpr[i] = _arr[2];
        goodsImg[i] = _arr[3];
        _arr = 0;
        break;

    case PICKUP.__RECH_EXPLOSIVES:
        goodsId[i] = irandom_range(RECHARGABLE.__NONE + 1, RECHARGABLE.__END - 1);
        var _arr = gameGetRechargableExplosiveInformation(goodsId[i]);
        goodsName[i] = _arr[0];
        goodsDesc[i] = _arr[1];
        goodsSpr[i] = _arr[2];
        goodsImg[i] = _arr[3];
        _arr = 0;    
        break;

    case PICKUP.__WEAPON:
        goodsId[i] = choose(
            irandom_range(WEAPONS.__MELEE_BEGIN + 1, WEAPONS.__RANGED_BEGIN - 1),
            irandom_range(WEAPONS.__RANGED_BEGIN + 1, WEAPONS.__RANGED_END - 2));
        var _arr = gameGetWeaponInformation(goodsId[i]);
        goodsName[i] = _arr[0] + " (" + _arr[2] + ")";
        goodsDesc[i] = _arr[1];
        goodsSpr[i] = _arr[3];
        goodsImg[i] = _arr[4];
        _arr = 0;
        break;        
    }
    goodsPrice[i] = irandom_range(5, 150);
    // sprite offset calculate
    var sp = goodsSpr[i];
    var sprcx = sprite_get_width(sp) / 2,
        sprcy = sprite_get_height(sp) / 2;
    var sprox = sprite_get_xoffset(sp),
        sproy = sprite_get_yoffset(sp);
    goodsXoff[i] = sprcx - sprox;
    goodsYoff[i] = sprcy - sproy;
}


