///gameGetRandomWeapon(0-melee/1-range/2-any)
if (argument[0] == 0)
{

}
else if (argument[0] == 1)
{

}
else if (argument[0] == 2)
{
    return choose(irandom_range(WEAPONS.__MELEE_BEGIN + 1, WEAPONS.__RANGED_BEGIN - 1),
        irandom_range(WEAPONS.__RANGED_BEGIN + 1, WEAPONS.__RANGED_END - 1));
}   
