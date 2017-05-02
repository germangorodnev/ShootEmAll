///gameCreateExplosion(x, y, damage, 0-player's/1-enemy's, CUCKED.__, damageCooldown)
var ex = instance_create(argument[0], argument[1], oExplosion);
ex.damage = argument[2];
ex.group = argument[3];
ex.cuck = argument[4];
ex.dmgcd = argument[5];
