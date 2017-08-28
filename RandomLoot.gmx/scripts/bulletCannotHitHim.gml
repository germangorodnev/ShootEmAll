///bulletCannotHitHim(him, bullet)
var ms = argument[0],
    bl = argument[1];
if (ms.group == bl.group) // same teamz
    return 1;
if (!instance_exists(bl.parent))
    return 1;
if (!ms.par.hittable) // invulnerable
    return 1;
return 0;
