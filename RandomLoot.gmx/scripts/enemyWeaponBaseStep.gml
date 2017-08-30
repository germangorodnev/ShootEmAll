detect = enemyDetectPlayer();
if (detect == 1)
{
    var ca = enemyCanAttack();
    if (ca == 1)
    {
        enemyFullRotateAndAttack();
        exit;
    }
}

