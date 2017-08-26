var pdir = point_direction(x, y, target.x, target.y);
if (angle != median(pdir - 3, angle, pdir + 3))
    angle = pdir;
else
    enemyAttack();

