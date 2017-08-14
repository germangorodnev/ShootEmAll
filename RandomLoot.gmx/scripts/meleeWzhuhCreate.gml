///meleeWzhuhCreate(x, y, group, [type = 0], [scale = 3], [recoil speed], [recoil timer])
// returns id
var tt = 0;
var w = instance_create(argument[0], argument[1], oMeleeWzhuh);
w.group = argument[2];
w.par = id;
if (argument_count > 3)
    w.wztype = argument[3];
if (argument_count > 4)
{
    w.image_xscale = argument[4];
    w.image_yscale = argument[4];
}
if (argument_count > 5)
    w.recspd = argument[5];
if (argument_count > 6)
    w.rectmr = argument[6];

return w;
