for (var i = 0; i < abilCount; i++)
{
    if (abilsTmr[i] && !--abilsTmr[i])
    {
        abilsTmr[i] = -1;
    }
}
