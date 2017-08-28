///gameGetProjectileNameByIndex(PROJECTILE.__)
//SWITCH ADD PROJECTILE
switch (argument[0])
{
case PROJECTILE.__PELLET:   
    return oShotgunPellet;
    break;
case PROJECTILE.__BULLET:   
    return oBulletProjectile;
    break;
case PROJECTILE.__ENERGY_LINE:   
    return oEnergyProjectile;
    break;
case PROJECTILE.__FAST_BULLET:   
    return oFastBullet;
    break;
case PROJECTILE.__BORIAN:   
    return oBorianBulg;
    break;
case PROJECTILE.__GRENADE_ONE_GL:   
    return oGreande;
    break;
    
    
case PROJECTILE.__LASER:
    return oLaser;
    break;
case PROJECTILE.__LASER_RED:
    return oLaserRed;
    break;
case PROJECTILE.__LASER_BLUE:
    return oLaserBlue;
    break;
    
    
case PROJECTILE.__BULLET_LINE:
    return oBulletLine;
    break;
case PROJECTILE.__PHASER:
    return oPhaserProjectile;
    break;
case PROJECTILE.__BIG_BULG:
    return oBorianBulgBig;
    break;
case PROJECTILE.__PLASM:
    return oPlasm;
    break;
case PROJECTILE.__CHAINSAW:
    return oChainsaw;
    break;
case PROJECTILE.__DARTS:
    return oDarts;
    break;
    
    
case PROJECTILE.__ENEMY_BULLET:   
    return oEnemyBullet;
    break;
case PROJECTILE.__ENEMY_BULLET_UZI:   
    return oEnemyBulletUzi;
    break;
}

