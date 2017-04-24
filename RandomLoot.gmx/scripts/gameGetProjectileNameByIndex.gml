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
}
