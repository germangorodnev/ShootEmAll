///laserDoorAdd(x, y, type)
var newd = instance_create(argument[0], argument[1], oLevelDoor);

with (newd)
{
    vh = argument[2];
    switch (vh)
    {
    case 0: // right 
        image_index = 1;   
        x1 = x + 7;
        y1 = y;
        y2 = y + sprite_height;
        x2 = x1;
        depth = -y - LEVEL.TILE_H;
        break;
    case 1: // top
        depth = -y - LEVEL.TILE_H - 5;
        break;
    case 2: // left
        x1 = x + 54;
        y1 = y;
        y2 = y + sprite_height;
        x2 = x1;
        image_index = 2;   
        depth = -y - LEVEL.TILE_H;
        break;
    case 3: // bottom
        depth = -y - LEVEL.TILE_H - 5;
        break;
    }
}
