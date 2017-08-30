image_angle = direction;
projectileTimer();
if (!active)
    exit;
    
cacheUpdate();     

depth = -y-10;
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
    
if (outsideRoom())
{
    instance_destroy();
    exit;
}

var ic = instance_place(x, y, oMaskHit);
if (ic != noone)
{
    if (bulletCannotHitHim(ic, id))
        exit;
    var a = damage,
        b = cuck,
        c = parent.id,
        cdd = dmgcd;
    var tk = 0;
    with (ic)
        tk = maskTryGetDmg(c, a, b, cdd);
    if (tk)
    {
        collideId = ic;
        cntgothrough--;
        if (cntgothrough <= 0)
            instance_destroy();
        if (group == 0)
        {
            // player on hit bonus
        }
        else
        {
            // this bullet is from enemy
        }
    }
}

//if (!(lvlGridCache[1, 1] & collideWith))
//    exit;
if (!colPlaceFree(x, y, collideWith))
{
    instance_destroy();
}

