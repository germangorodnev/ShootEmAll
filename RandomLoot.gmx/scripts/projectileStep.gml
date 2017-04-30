image_angle = direction;
projectileTimer();
if (!active)
    exit;
if (outsideRoom())
    instance_destroy();
if (place_meeting(x, y, oSolidObject))
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
        c = parent.id;
    var tk = 0;
    with (ic)
        tk = maskTryGetDmg(c, a, b);
    if (tk)
    {
        cntgothrough--;
        if (!cntgothrough)
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
