///laserDoorAdd(x, y, type, cell1, cell2)
var newd = instance_create(argument[0], argument[1], oLevelDoor);

with (newd)
{
    vh = argument[2];
    room1 = argument[3];
    room2 = argument[4];
    switch (vh)
    {
    case 0: // right 
        image_index = 1;   
        x1 = x + 7;
        y1 = y;
        y2 = y + sprite_height;
        x2 = x1;
        depth = -y - LEVEL.TILE_H / 1.5 + 9;
        tileType = TILES.__LASER_DOOR_VERT;
        break;
    case 1: // top
        depth = -y - LEVEL.TILE_H - 18;
        //yr--;
        tileType = TILES.__LASER_DOOR_HOR;
        break;
    case 2: // left
        x1 = x + 54;
        y1 = y;
        y2 = y + sprite_height;
        x2 = x1;
        image_index = 2;   
        depth = -y - LEVEL.TILE_H / 1.5 + 9;
        tileType = TILES.__LASER_DOOR_VERT;
        break;
    case 3: // bottom
        //yr+=2;
        depth = -y - LEVEL.TILE_H - 18;
        tileType = TILES.__LASER_DOOR_HOR;
        break;
    }
}
return newd;
