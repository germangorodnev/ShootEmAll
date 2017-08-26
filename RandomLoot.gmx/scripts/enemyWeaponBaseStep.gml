detect = enemyDetectPlayer();
if (detect == 1)
{
    //angle = point_direction(x, y, target.x, target.y);
    //xsc = (oPlayer.x > x) * 2 - 1;
    // well, maybe shoot
    var ca = enemyCanAttack();
    if (ca == 1)
    {
        enemyFullRotateAndAttack();
        exit;
    }
    // now we follow the player
    //else if (ca == -1)
    //    enemyStartPattern(ENEMY_PATTERN.__FOLLOW, oPlayer.id);
}

