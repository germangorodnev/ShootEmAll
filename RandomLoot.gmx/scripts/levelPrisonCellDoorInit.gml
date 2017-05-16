switch (type)
{
case 0: // right
    sprite_index = sPrisonDoorRight;
    break;
    
case 2: // left
    sprite_index = sPrisonDoorLeft;
    break;
    
case 1: // top/bottom
case 3:
    sprite_index = sPrisonDoorTopBot;
    break;
}
