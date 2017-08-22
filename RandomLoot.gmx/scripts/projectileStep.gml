image_angle = direction;
projectileTimer();
if (!active)
    exit;

depth = -y-10;
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
    
if (outsideRoom())
    instance_destroy();

var ic = instance_place(x, y, oMaskHit);
if (ic != noone)
{
    if (ic.group == group) // same teamz
        exit;
    if (!ic.par.hittable) // invulnerable
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

//if (!colPlaceFree(x + lengthdir_x(speed, direction - 180), y + lengthdir_y(speed, direction - 180), 1))
if (!colPlaceFree(x, y, collideWith))
{
    instance_destroy();
}

