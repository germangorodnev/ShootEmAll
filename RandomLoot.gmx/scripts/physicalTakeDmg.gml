///physicalTakeDmg(int dmg)
// return 1 if damaged, 0 otherwise
// SWITCH
switch (object_index)
{
case oPlayer:
    if (cuckTmr != -1)
        return 0;
    playerChangeHP(id, -argument[0]);
    return 1;
    break;
    
default:
    hp -= argument[0];
    return 1;
    break;
}
