///bulletCreate(x, y, object, dmg, dir, spd, par, dmgcd)
// returns the bullet itself
var nb = instance_create(argument[0], argument[1], argument[2]);
with (nb)
{
    damage = argument[3];
    direction = argument[4];
    speed = argument[5];
    parent = argument[6];
    dmgcd = argument[7];
}
return nb;
