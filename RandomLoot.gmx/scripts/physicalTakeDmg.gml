///physicalTakeDmg(int dmg)
// return 1 if damaged, 0 otherwise
// SWITCH
switch (object_index)
{
case oPlayer:
    hp = max(0, hp - argument[0]);
    return 1;
    break;
    
default:
    hp -= argument[0];
    return 1;
    break;
}
