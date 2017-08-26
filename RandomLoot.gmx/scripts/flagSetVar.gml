///flagSetVar(var, flag, 0 / 1)
var v = argument[0];
if (argument[2])
{
    v |= argument[1];
    return v;
}
else
{
    v &= ~argument[1];
    return v;
}
