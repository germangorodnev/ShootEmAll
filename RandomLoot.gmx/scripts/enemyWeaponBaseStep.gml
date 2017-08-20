detect = enemyDetectPlayer();
if (detect == 1)
{
    target = oPlayer;
    //angle = point_direction(x, y, target.x, target.y);
    //xsc = (oPlayer.x > x) * 2 - 1;
    // well, maybe shoot
    var ca = enemyCanAttack();
    if (ca == 1)
    {
        angle = point_direction(x, y, target.x, target.y) + irandom(21) - 10;
        enemyAttack();
        exit;
    }
    // now we follow the player
    //else if (ca == -1)
    //    enemyStartPattern(ENEMY_PATTERN.__FOLLOW, oPlayer.id);
}

