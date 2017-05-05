///damagingCollisionDetect(damage, cuck, parent, damagecooldown)
var hh = 0;
///Checking the check
instancePlaceList(x, y, oMaskHit, ls, 1);
for (var i = 0, cnt = ds_list_size(ls); i < cnt; i++)
{
    var obj = ls[| i];
    if (obj.group == group) // same teamz
        continue;
    if (!obj.par.hittable) // invulnerable
        continue;
    var a = argument[0],
        b = argument[1],
        c = argument[2],
        cdd = argument[3];
    var tk = 0;
    with (obj)
        tk = maskTryGetDmg(c, a, b, cdd);
    if (tk)
    {
        if (group == 0)
        {
            // player onhit
        }
    }
}

