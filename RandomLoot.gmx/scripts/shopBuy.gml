///shopBuy(pos)
var p = argument[0],
    ind = goodsId[p];
if (global.money < goodsPrice[p])
    exit;
switch (goodsClass[p])
{
case PICKUP.__SU_CARDS:
    with (instance_create(giveX + irandom_range(-rangeX, rangeX), giveY + irandom(rangeY), oPickupCard))
        pickupableInit(PICKUP.__SU_CARDS, ind);
    break;
case PICKUP.__RECH_EXPLOSIVES:
    with (instance_create(giveX + irandom_range(-rangeX, rangeX), giveY + irandom(rangeY), oPickupRechargable))
        pickupableInit(PICKUP.__RECH_EXPLOSIVES, ind);
    break;
case PICKUP.__WEAPON:
    var _inf = gameGetWeaponParams(ind, gameGetWeaponType(ind));
    with (instance_create(giveX + irandom_range(-rangeX, rangeX), giveY + irandom(rangeY), oPickupWeapon))
        pickupableInit(PICKUP.__WEAPON, ind, _inf[W_PR.__SCORE_SIZE]);
    break;
}
global.money -= goodsPrice[p];
shopDeletePos(p);
